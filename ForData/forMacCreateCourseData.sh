#!/bin/bash

# Defining the course data as an array of JSON objects as for some reason not able to read from dummyData.txt
courses_data=(
  '{
    "title": "Introduction to Programming",
    "description": "Learn the fundamentals of programming using Python. This course covers basic concepts, data structures, and algorithms.",
    "instructor": "John Doe",
    "duration": "6 weeks",
    "category": "Computer Science",
    "image": "https://i0.wp.com/junilearning.com/wp-content/uploads/2020/06/python-programming-language.webp?fit=800%2C800&ssl=1"
  }'
  '{
    "title": "Web Development Bootcamp",
    "description": "A comprehensive bootcamp covering HTML, CSS, JavaScript, and backend development with Node.js.",
    "instructor": "Jane Smith",
    "duration": "12 weeks",
    "category": "Web Development",
    "image": "https://process.fs.teachablecdn.com/ADNupMnWyR7kCWRvm76Laz/resize=width:705/https://www.filepicker.io/api/file/FSIjaoI2QtKWZL65cogd"
  }'
  '{
    "title": "Data Science and Machine Learning",
    "description": "An in-depth course that covers data analysis, machine learning algorithms, and practical applications using Python.",
    "instructor": "Emily Johnson",
    "duration": "8 weeks",
    "category": "Data Science",
    "image": "https://www.techedmagazine.com/wp-content/uploads/2023/07/Artificial-Intelligence-2.jpg"
  }'
  '{
    "title": "Digital Marketing Essentials",
    "description": "Learn the key concepts of digital marketing, including SEO, PPC, social media marketing, and content strategy.",
    "instructor": "Michael Brown",
    "duration": "4 weeks",
    "category": "Marketing",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoX2ZVCvZEITxzUMnIsHC0jAPu4OYOYPP-IA&s"
  }'
  '{
    "title": "Graphic Design Fundamentals",
    "description": "A course designed for beginners that covers the principles of graphic design, typography, and color theory.",
    "instructor": "Sarah Davis",
    "duration": "5 weeks",
    "category": "Design",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8yFLvrBjOxZm-hSFL4OpTl_RQsyi9xO5zxA&s"
  }'
)

# Loop through the courses and send each one individually
for course in "${courses_data[@]}"; do
  echo "Sending data: $course"
  response=$(curl -X POST http://localhost:5050/courses \
    -H "Content-Type: application/json" \
    -d "$course")
  
  # Print the response for each course
  echo "Response: $response"
done
