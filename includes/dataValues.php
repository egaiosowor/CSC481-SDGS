
<?php 
error_reporting(0);

$query = mysqli_query($con,"select * from tblstudent where matricNo='$matricNo'");
$row = mysqli_fetch_array($query);
$yearId = $row['yearId'];


//Log on to codeastro.com for more projects!
////////////  ADMINISTRATOR DASHBOARD //////////////




//Log on to codeastro.com for more projects!
//-------------------------SUPER ADMINISTRATOR


$admin=mysqli_query($con,"select * from tbladmin where adminTypeId = '2'");
$countAdmin=mysqli_num_rows($admin);

$todaysAtt=mysqli_query($con,"select * from tblattendance where date(DateTaken)=CURDATE();"); //today's Attendance
$countTodaysAttendance=mysqli_num_rows($todaysAtt);

$allAtt=mysqli_query($con,"select * from tblattendance");
$countAllAttendance=mysqli_num_rows($allAtt);

// //-------------------------------------------


$staffQuery=mysqli_query($con,"select * from tblstaff"); //staff
$countAllStaff = mysqli_num_rows($staffQuery);

$studentQuery=mysqli_query($con,"select * from tblstudent"); //student
$countAllStudent = mysqli_num_rows($studentQuery);

$courseQuery=mysqli_query($con,"select * from tblcourse"); //courses
$countAllCourses = mysqli_num_rows($courseQuery);

$courseSession=mysqli_query($con,"select * from tblsession"); //courses
$countAllSession = mysqli_num_rows($courseSession);

$resultComputed=mysqli_query($con,"select * from tblfinalresult"); //courses
$countAllComputed = mysqli_num_rows($resultComputed);

$yearQue=mysqli_query($con,"select * from tblyear"); //courses
$countAllYear = mysqli_num_rows($yearQue);

$semesterQue=mysqli_query($con,"select * from tblsemester"); //courses
$countAllSemester = mysqli_num_rows($semesterQue);

$distinctno=mysqli_query($con,"SELECT * from tblfinalresult WHERE classOfDiploma = 'Distinction'"); //dist. no.
$countAllDist = mysqli_num_rows($distinctno);

$uppercred=mysqli_query($con,"SELECT * from tblfinalresult WHERE classOfDiploma = 'Upper Credit'"); //upper cred
$countAllUpc = mysqli_num_rows($uppercred);

$lowercred=mysqli_query($con,"SELECT * from tblfinalresult WHERE classOfDiploma = 'Lower Credit'"); //lower cred
$countAlllc = mysqli_num_rows($lowercred);

$justpass=mysqli_query($con,"SELECT * from tblfinalresult WHERE classOfDiploma = 'Pass'"); //just passed
$countAlljp = mysqli_num_rows($justpass);

$failed=mysqli_query($con,"SELECT * from tblfinalresult WHERE classOfDiploma = 'Fail'"); //failed numbers
$countAllf = mysqli_num_rows($failed);

//Log on to codeastro.com for more projects!
//-----------------------LECTURER----------------------

$lecCourse=mysqli_query($con,"select * from tblcourse"); //courses
$countLecCourse = mysqli_num_rows($lecCourse);

$que=mysqli_query($con,"select * from tblassignedstaff"); //assigned staff
$lecCountStaff = mysqli_num_rows($que);

//Log on to codeastro.com for more projects!
//-----------------------STUDENT----------------------

$studCourse=mysqli_query($con,"select * from tblcourse"); //courses
$coutAllStudentCourses = mysqli_num_rows($studCourse);

$queResult=mysqli_query($con,"select * from tblfinalresult where matricNo = '$matricNo'"); //assigned staff
$countAllStudResult = mysqli_num_rows($queResult);
//Log on to codeastro.com for more projects!
?>