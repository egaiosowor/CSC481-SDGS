<?php

//-------------------------Score Letter Grade -------------------------------

function getScoreLetterGrade($score){

    $letterGrade = "";
     if($score >= 70)
     {
        $letterGrade = "A";
     }
     else if($score >= 60){
        $letterGrade = "B";
     }
     else if($score >= 50){
        $letterGrade = "C";
     }
     else if($score >= 45){
         $letterGrade = "D";
     }
     else if($score >= 40){
        $letterGrade = "E";
     }
     else if($score <= 39){
         $letterGrade = "F";
     }

     return $letterGrade;
}

// -------------------------- Score Grade Point -------------------------

function getScoreGradePoint($score){

    $gradePoint = "";

     if($score >= 70)
     {
        $gradePoint = 5;
     }
     else if($score >= 60){
        $gradePoint = 4;
     }
     else if($score >= 50){
        $gradePoint = 3;
     }
     else if($score >= 45){
         $gradePoint = 2;
     }
     else if($score >= 40){
        $gradePoint = 1;
     }
     else if($score <= 39){
        $gradePoint = 0;
     }

     return $gradePoint;
}

// -------------------------- Class of Diploma -------------------------

function getClassOfDiploma($gpa){

    $classOfDiploma = "";

     if($gpa >= 4.50)
     {
        $classOfDiploma = "First Class";
     }
     else if($gpa >= 3.50){
        $classOfDiploma = "2nd Class Upper";
     }
     else if($gpa >= 2.40){
       $classOfDiploma = "2nd Class Lower";
     }
     else if($gpa >= 1.50){
         $classOfDiploma = "2rd Class Upper";
     }
     else if($gpa < 1.50){
        $classOfDiploma = "Fail";
     }

     return $classOfDiploma;
}


?>
<!-- Log on to codeastro.com for more projects! -->