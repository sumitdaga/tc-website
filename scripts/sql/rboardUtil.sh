CP=../../resources:../../build/classes:$CLASSPATH:../../lib/jars/log4j-1.2.7.jar:../../lib/jars/log4j-boot.jar:../../lib/jars/ifxjdbc.jar:../../lib/jars/tcs/email_engine.jar:../../lib/jars/jboss/mail.jar

nohup java  -cp $CP com.topcoder.shared.util.sql.DBUtilityLauncher com.topcoder.utilities.sql.RBoardUtility -xmlfile rboardUtil.xml $@ > ./nohup.out 2>&1 &
tail -f nohup.out
