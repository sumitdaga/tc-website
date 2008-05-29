/*
 * Copyright (C) 2008 TopCoder Inc., All Rights Reserved.
 */
package com.topcoder.web.studio.util;

import com.topcoder.web.studio.model.StudioFileType;
import com.topcoder.web.studio.validation.SubmissionValidator;
import com.topcoder.web.studio.Constants;
import com.topcoder.shared.util.logging.Logger;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ByteArrayInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.Map;
import java.util.HashMap;

/**
 * <p>An analyzer for <code>ZIP</code> archives. Maps to {@link StudioFileType#ZIP_ARCHIVE_TYPE_ID} file type.</p>
 *
 * @author isv
 * @version 1.0
 * @since TopCoder Studio Modifications Assembly (Req# 5.7)
 */
public class ZipFileAnalyzer implements BundledFileAnalyzer {

    private static final Logger log = Logger.getLogger(ZipFileAnalyzer.class);

    /**
     * <p>An <code>int</code> referencing the unknown size of archive entry.</p>
     */
    protected static final int UNKNOWN_ENTRY_SIZE = -1;

    /**
     * <p>A <code>byte</code> array to be used as temporary buffer when reading compressed content.</p>
     */
    protected static final byte[] BUFFER = new byte[1];

    /**
     * <p>A <code>String</code> providing the path to a directory in submission archive where the source files for the
     * submission can be located (followed by slash for convenient use in {@link #analyze(ZipInputStream, boolean)}
     * method.</p>
     *
     * @since STUDIO-128
     */
    private static final String SUBMISSION_SOURCE_PATH_SLASHED = Constants.SUBMISSION_SOURCE_PATH + "/";

    /**
     * <p>A <code>String</code> providing the path to a directory in submission archive where the submission files can
     * be located (followed by slash for convenient use in {@link #analyze(ZipInputStream, boolean)} method.</p>
     *
     * @since STUDIO-128
     */
    private static final String SUBMISSION_PATH_SLASHED = Constants.SUBMISSION_PATH + "/";

    /**
     * <p>A <code>boolean</code> flag indicating whether the native submission file is included into latest analyzed
     * bundled file or not.</p>
     */
    protected boolean nativeSubmissionProvided = false;

    /**
     * <p>A <code>boolean</code> flag indicating whether the preview image is included into latest analyzed bundled
     * file or not.</p>
     */
    protected boolean previewImageProvided = false;

    /**
     * <p>A <code>boolean</code> flag indicating whether the preview file is included into latest analyzed bundled
     * file or not.</p>
     */
    protected boolean previewFileProvided = false;

    /**
     * <p>A <code>byte</code> array providing the uncompressed content of preview image extracted from the analyzed
     * file.</p>
     */
    protected byte[] previewImageContent = null;

    /**
     * <p>A <code>byte</code> array providing the uncompressed content of preview file extracted from the analyzed
     * file.</p>
     */
    protected byte[] previewFileContent = null;

    /**
     * <p>A <code>String</code> providing the path to preview image in analyzed file.</p>
     */
    protected String previewImagePath = null;

    /**
     * <p>A <code>String</code> providing the path to preview file in analyzed file.</p>
     */
    protected String previewFilePath = null;

    /**
     * <p>A <code>StudioFileType</code> representing the file type for preview image in analyzed file.</p>
     */
    protected StudioFileType previewImageFileType = null;

    /**
     * <p>A <code>boolean</code> flag indicating whether the <code>source</code> directory is included into latest
     * analyzed bundled file or not.</p>
     *
     * @since STUDIO-128
     */
    protected boolean sourceDirIncluded = false;

    /**
     * <p>A <code>boolean</code> flag indicating whether the <code>source</code> directory is included into latest
     * analyzed bundled file or not.</p>
     *
     * @since STUDIO-128
     */
    protected boolean submissionDirIncluded = false;

    /**
     * <p>Constructs new <code>SubmissionValidator$ZipFileAnalyzer</code> instance. This implementation does
     * nothing.</p>
     */
    public ZipFileAnalyzer() {
    }

    /**
     * <p>Analyzes the provided content of the bundled file and extracts all necessary details.</p>
     *
     * @param content an <code>InputStream</code> providing the content of the submission file.
     * @param retrieveFiles <code>true</code> if the analyzer must retrieve and uncompress the content of desired files;
     *        <code>false</code> otherwise.
     * @throws IOException if an I/O error occurs while reading the content.
     */
    public void analyze(InputStream content, boolean retrieveFiles) throws IOException {
        analyze(new ZipInputStream(content), retrieveFiles);
    }

    /**
     * <p>Checks if the preview image is available from analyzed bundled file or not.</p>
     *
     * @return <code>true</code> if preview image file is available from analyzed bundled file; <code>false</code>
     *         otherwise.
     */
    public boolean isPreviewImageAvailable() {
        return this.previewImageProvided;
    }

    /**
     * <p>Checks if the native submission is available from analyzed bundled file or not.</p>
     *
     * @return <code>true</code> if native submission is available from analyzed bundled file; <code>false</code>
     *         otherwise.
     */
    public boolean isNativeSubmissionAvailable() {
        return this.nativeSubmissionProvided;
    }

    /**
     * <p>Checks if the preview file is available from analyzed bundled file or not.</p>
     *
     * @return <code>true</code> if preview file is available from analyzed bundled file; <code>false</code>
     *         otherwise.
     */
    public boolean isPreviewFileAvailable() {
        return this.previewFileProvided;
    }

    /**
     * <p>Gets the content of the preview image if available from the analyzed file.</p>
     *
     * @return a <code>byte</code> array providing the uncompressed content of the preview image.
     * @throws IllegalStateException if the preview image is not available in analyzed file.
     */
    public byte[] getPreviewImageContent() {
        if (!this.previewImageProvided) {
            throw new IllegalStateException("There is no preview image available from the submission");
        }
        return this.previewImageContent;
    }

    /**
     * <p>Gets the content of the bundled submission if available from the analyzed file.</p>
     *
     * @return a <code>byte</code> array providing the uncompressed content of the bundled submission.
     * @throws IllegalStateException if the bundled submission is not available in analyzed file.
     */
    public byte[] getPreviewFileContent() {
        if (!this.previewFileProvided) {
            throw new IllegalStateException("There is no preview file available from the submission");
        }
        return this.previewFileContent;
    }

    /**
     * <p>Gets the path to preview image if available from the analyzed file.</p>
     *
     * @return a <code>String</code> providing the path to preview image in the bundled submission.
     * @throws IllegalStateException if the bundled submission is not available in analyzed file.
     */
    public String getPreviewImagePath() {
        if (!this.previewImageProvided) {
            throw new IllegalStateException("There is no preview image available from the submission");
        }
        return this.previewImagePath;
    }

    /**
     * <p>Gets the path to preview file if available from the analyzed file.</p>
     *
     * @return a <code>String</code> providing the path to preview file in the bundled submission.
     * @throws IllegalStateException if the bundled submission is not available in analyzed file.
     */
    public String getPreviewFilePath() {
        if (!this.previewFileProvided) {
            throw new IllegalStateException("There is no preview file available from the submission");
        }
        return this.previewFilePath;
    }

    /**
     * <p>Gets the file type for preview image if available from the analyzed file.</p>
     *
     * @return a <code>StudioFileType</code> representing the filee type for preview image in the bundled submission.
     * @throws IllegalStateException if the bundled submission is not available in analyzed file.
     */
    public StudioFileType getPreviewImageFileType() {
        if (!this.previewImageProvided) {
            throw new IllegalStateException("There is no preview image available from the submission");
        }
        return this.previewImageFileType;
    }

    /**
     * <p>Gets the details for the files bundled withing the ana</p>
     *
     * @param content a <code>byte</code> array providing the content of the
     * @return a <code>Map</code> mapping the names of the files to content of the respective files.
     * @throws IOException if an I/O error occurs while reading the content.
     * @since Studio Submission Slideshow
     */
    public Map<String, byte[]> getFiles(byte[] content) throws IOException {
        return getFiles(new ZipInputStream(new ByteArrayInputStream(content)));
    }

    /**
     * <p>Checks if <code>source</code> directory is included into analyzed bundled file or not.</p>
     *
     * @return <code>true</code> if <code>source</code> directory is included into analyzed bundled file;
     *         <code>false</code> otherwise.
     * @since STUDIO-128
     */
    public boolean isSourceDirectoryAvailable() {
        return this.sourceDirIncluded;
    }

    /**
     * <p>Checks if <code>submission</code> directory is included into analyzed bundled file or not.</p>
     *
     * @return <code>true</code> if <code>submission</code> directory is included into analyzed bundled file;
     *         <code>false</code> otherwise.
     * @since STUDIO-128
     */
    public boolean isSubmissionDirectoryAvailable() {
        return this.submissionDirIncluded;
    }

    /**
     * <p>Gets the details for the files bundled within the specified content of the bundled file.</p>
     *
     * @param content a <code>byte</code> array providing the content of the bundled file.
     * @return a <code>Map</code> mapping the names of the files to content of the respective files.
     * @throws IOException if an I/O error occurs while reading the content.
     * @since Studio Submission Slideshow
     */
    protected Map<String, byte[]> getFiles(ZipInputStream content) throws IOException {
        Map<String, byte[]> files = new HashMap<String, byte[]>();
        try {
            ZipEntry entry = content.getNextEntry();
            while (entry != null) {
                if (!entry.isDirectory()) {
                    files.put(entry.getName(), retrieveFileContent(content));
                }
                entry = content.getNextEntry();
            }
        } finally {
            content.close();
        }
        return files;
    }

    /**
     * <p>Analyzes the provided content of the bundled file and extracts all necessary details.</p>
     *
     * @param content an <code>ZipInputStream</code> providing the content of the submission file.
     * @param retrieveFiles <code>true</code> if the analyzer must retrieve and uncompress the content of desired files;
     *        <code>false</code> otherwise.
     * @throws IOException if an I/O error occurs while reading the content.
     */
    protected void analyze(ZipInputStream content, boolean retrieveFiles) throws IOException {
        log.debug("analyze called");
        this.nativeSubmissionProvided = false;
        this.previewImageProvided = false;
        this.previewFileProvided = false;
        this.sourceDirIncluded = false;
        this.submissionDirIncluded = false;

        try {
            ZipEntry entry = content.getNextEntry();
            if (log.isDebugEnabled() && entry==null) {
                log.debug("null entry");
            }
            while (!(this.nativeSubmissionProvided && this.previewImageProvided && this.previewFileProvided
                     && this.sourceDirIncluded && this.submissionDirIncluded)
                   && (entry != null)) {

                if (log.isDebugEnabled()) {
                    StringBuilder b = new StringBuilder(100);
                    b.append(entry.getName()).append(" ");
                    if (entry.isDirectory()) {
                        b.append("it's a directory ");
                    } else {
                        b.append("has a size of ").append(entry.getSize());
                    }
                }

                String entryName = entry.getName().toUpperCase();
                if (!entry.isDirectory()) {
                    // Check if the non-empty native submission is provided
                    if (!this.nativeSubmissionProvided
                        && entryName.startsWith(SUBMISSION_SOURCE_PATH_SLASHED.toUpperCase())) {
                        long entrySize = entry.getSize();
                        if (entrySize > 0) {
                            this.nativeSubmissionProvided = true;
                        } else if (entrySize == UNKNOWN_ENTRY_SIZE) {
                            // In case the size of entry is not known then attempt to decompress the entry - if
                            // there is at least 1 compressed byte available then this indicates that the compressed
                            // file is not empty
                            int bytesRead = content.read(BUFFER, 0, BUFFER.length);
                            if (bytesRead > 0) {
                                this.nativeSubmissionProvided = true;
                            }
                        }
                    } else if (entryName.startsWith(SUBMISSION_PATH_SLASHED.toUpperCase())) {
                        StudioFileType fileType = SubmissionValidator.getFileType(entry.getName());
                        if (fileType != null) {
                            if (!this.previewImageProvided && fileType.isImageFile()) {
                                this.previewImageProvided = true;
                                this.previewImagePath = entry.getName();
                                this.previewImageFileType = fileType;
                                if (retrieveFiles) {
                                    this.previewImageContent = retrieveFileContent(content);
                                }
                            } else if (!this.previewFileProvided && fileType.isBundledFile()) {
                                this.previewFileProvided = true;
                                this.previewFilePath = entry.getName();
                                if (retrieveFiles) {
                                    this.previewFileContent = retrieveFileContent(content);
                                }
                            }
                        }
                    }
                } else {
                    // Since STUDIO-128 - Analyze the directory name to check if source or submission directory is
                    // included
                    if (!this.sourceDirIncluded && SUBMISSION_SOURCE_PATH_SLASHED.equalsIgnoreCase(entryName)) {
                        this.sourceDirIncluded = true;
                    } else if (!this.submissionDirIncluded && SUBMISSION_PATH_SLASHED.equalsIgnoreCase(entryName)) {
                        this.submissionDirIncluded = true;
                    }
                }
                entry = content.getNextEntry();
            }
        } finally {
            content.close();
        }
    }

    /**
     * <p>Retrieves and uncompresses the content currently available from the specified archive.</p>
     *
     * @param content an <code>ZipInputStream</code> representing the archive.
     * @return a <code>byte</code> array providing the uncompressed content currently available from archive. 
     * @throws IOException if an I/O error occurs while retrieving the content from the archive.
     */
    private byte[] retrieveFileContent(ZipInputStream content) throws IOException {
        final int bufferSize = 4096;
        int count;
        byte data[] = new byte[bufferSize];
        BufferedInputStream is = new BufferedInputStream(content);
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        BufferedOutputStream dest = new BufferedOutputStream(baos, bufferSize);
        try {
            while ((count = is.read(data, 0, bufferSize)) != -1) {
                dest.write(data, 0, count);
            }
        } finally {
            dest.flush();
            dest.close();
        }
        return baos.toByteArray();
    }
}
