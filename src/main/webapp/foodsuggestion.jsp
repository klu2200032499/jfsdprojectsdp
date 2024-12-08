<%@page import="com.klef.jfsd.springboot.model.User"%>
<%@include file="usernavbar.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	User user = (User)session.getAttribute("user");

	if(user==null){
		response.sendRedirect("usersessionexpiry");
		return;
	}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Complete Nutritional Guide for Indian Diet</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.7;
            max-width: 1400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h1, h2, h3 {
            color: #2c3e50;
            text-align: center;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        .section {
            background-color: white;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
        }
        .nutrition-table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .highlight {
            background-color: #e8f4f8;
            font-weight: bold;
        }
        .age-group {
            color: #2980b9;
        }
        .meal-item {
            margin-bottom: 15px;
            padding: 10px;
            background-color: #f9f9f9;
            border-radius: 5px;
        }
        .meal-details {
            font-size: 0.9em;
            color: #7f8c8d;
        }
    </style>
</head>
<body>
    <h1>Comprehensive Nutritional Guide for Indian Diet</h1>

    <div class="section">
        <h2>Daily Nutritional Requirements by Age and Gender</h2>
        <table class="nutrition-table">
            <thead>
                <tr>
                    <th>Age Group</th>
                    <th>Calories (kcal)</th>
                    <th>Protein (g)</th>
                    <th>Carbohydrates (g)</th>
                    <th>Fat (g)</th>
                    <th>Fiber (g)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="age-group">Children (4-8 years)</td>
                    <td>1,200-1,400</td>
                    <td>20-30</td>
                    <td>130-150</td>
                    <td>25-35</td>
                    <td>14-16</td>
                </tr>
                <tr>
                    <td class="age-group">Children (9-13 years)</td>
                    <td>1,400-1,800</td>
                    <td>34-40</td>
                    <td>130-180</td>
                    <td>25-40</td>
                    <td>16-20</td>
                </tr>
                <tr>
                    <td class="age-group">Teenage Girls (14-18 years)</td>
                    <td>1,800-2,200</td>
                    <td>46-50</td>
                    <td>180-220</td>
                    <td>40-55</td>
                    <td>20-25</td>
                </tr>
                <tr>
                    <td class="age-group">Teenage Boys (14-18 years)</td>
                    <td>2,000-2,600</td>
                    <td>52-65</td>
                    <td>200-270</td>
                    <td>45-65</td>
                    <td>25-30</td>
                </tr>
                <tr>
                    <td class="age-group">Adult Women (19-30 years)</td>
                    <td>1,800-2,200</td>
                    <td>46-50</td>
                    <td>180-220</td>
                    <td>40-55</td>
                    <td>22-28</td>
                </tr>
                <tr>
                    <td class="age-group">Adult Men (19-30 years)</td>
                    <td>2,200-2,600</td>
                    <td>56-65</td>
                    <td>220-270</td>
                    <td>45-65</td>
                    <td>28-34</td>
                </tr>
                <tr>
                    <td class="age-group">Pregnant Women</td>
                    <td>2,200-2,500</td>
                    <td>71</td>
                    <td>270-300</td>
                    <td>55-65</td>
                    <td>28-30</td>
                </tr>
                <tr>
                    <td class="age-group">Lactating Women</td>
                    <td>2,500-2,800</td>
                    <td>71</td>
                    <td>290-320</td>
                    <td>55-70</td>
                    <td>29-34</td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="section">
        <h2>Micronutrient Requirements</h2>
        <table class="nutrition-table">
            <thead>
                <tr>
                    <th>Nutrient</th>
                    <th>Recommended Daily Intake</th>
                    <th>Key Food Sources</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Vitamin A</td>
                    <td>700-900 mcg</td>
                    <td>Carrots, Sweet Potato, Spinach, Mango</td>
                </tr>
                <tr>
                    <td>Vitamin C</td>
                    <td>65-90 mg</td>
                    <td>Citrus Fruits, Guava, Bell Peppers, Amla</td>
                </tr>
                <tr>
                    <td>Calcium</td>
                    <td>1000-1300 mg</td>
                    <td>Milk, Yogurt, Paneer, Ragi</td>
                </tr>
                <tr>
                    <td>Iron</td>
                    <td>8-18 mg</td>
                    <td>Spinach, Lentils, Red Meat, Chicken Liver</td>
                </tr>
                <tr>
                    <td>Vitamin D</td>
                    <td>600-800 IU</td>
                    <td>Sunlight, Egg Yolk, Fortified Milk</td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="section">
        <h2>Sample Balanced Meal Plan</h2>
        
        <h3>Breakfast Options</h3>
        <div class="meal-item">
            <strong>Vegetarian: Masala Dosa with Coconut Chutney</strong>
            <p class="meal-details">
                Nutritional Breakdown:
                - Calories: 350 kcal
                - Protein: 12g
                - Carbohydrates: 55g
                - Fat: 10g
                - Key Nutrients: Vitamin B, Iron, Calcium
            </p>
        </div>

        <div class="meal-item">
            <strong>Non-Vegetarian: Egg Bhurji with Whole Wheat Toast</strong>
            <p class="meal-details">
                Nutritional Breakdown:
                - Calories: 300 kcal
                - Protein: 18g
                - Carbohydrates: 25g
                - Fat: 15g
                - Key Nutrients: Vitamin B12, Selenium, Zinc
            </p>
        </div>

        <h3>Lunch Options</h3>
        <div class="meal-item">
            <strong>Vegetarian: Dal Khichdi with Mixed Vegetables</strong>
            <p class="meal-details">
                Nutritional Breakdown:
                - Calories: 400 kcal
                - Protein: 15g
                - Carbohydrates: 65g
                - Fat: 8g
                - Key Nutrients: Protein, Fiber, B-Vitamins
            </p>
        </div>

        <div class="meal-item">
            <strong>Non-Vegetarian: Chicken Curry with Brown Rice</strong>
            <p class="meal-details">
                Nutritional Breakdown:
                - Calories: 450 kcal
                - Protein: 28g
                - Carbohydrates: 45g
                - Fat: 15g
                - Key Nutrients: Protein, Selenium, Phosphorus
            </p>
        </div>

        <h3>Dinner Options</h3>
        <div class="meal-item">
            <strong>Vegetarian: Palak Paneer with Jeera Rice</strong>
            <p class="meal-details">
                Nutritional Breakdown:
                - Calories: 380 kcal
                - Protein: 16g
                - Carbohydrates: 35g
                - Fat: 20g
                - Key Nutrients: Calcium, Iron, Vitamin A
            </p>
        </div>

        <div class="meal-item">
            <strong>Non-Vegetarian: Fish Curry with Quinoa</strong>
            <p class="meal-details">
                Nutritional Breakdown:
                - Calories: 400 kcal
                - Protein: 30g
                - Carbohydrates: 35g
                - Fat: 12g
                - Key Nutrients: Omega-3, Vitamin D, Magnesium
            </p>
        </div>
    </div>

    <div class="section">
        <h2>Important Nutritional Notes</h2>
        <ul>
            <li>Individual nutritional needs vary based on age, gender, activity level, and health conditions.</li>
            <li>Consult a registered dietitian for personalized nutritional advice.</li>
            <li>Hydration is crucial - aim for 8-10 glasses of water daily.</li>
            <li>Supplement diet with fresh fruits and vegetables.</li>
            <li>Limit processed foods and added sugars.</li>
        </ul>
    </div>
</body>
</html>