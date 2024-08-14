-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2024 at 04:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_page`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `update_at`) VALUES
(21, 'Composer Autoload', '2024-08-14 04:29:06', '2024-08-14 04:29:06'),
(22, 'MYSQL', '2024-08-14 04:31:59', '2024-08-14 04:31:59'),
(23, 'Startegy Pattern ', '2024-08-14 04:32:43', '2024-08-14 04:32:43'),
(24, 'Scope Resolution Opearator in php', '2024-08-14 04:35:23', '2024-08-14 04:35:23'),
(25, 'Array Intersection function ရဲ့အသုံး၀င်ပုံများ 🤔', '2024-08-14 04:36:33', '2024-08-14 04:36:33'),
(26, 'Iterable', '2024-08-14 04:38:50', '2024-08-14 04:38:50'),
(27, 'OOP VS Procedural', '2024-08-14 04:54:52', '2024-08-14 04:54:52'),
(28, 'interface PHP', '2024-08-14 04:57:04', '2024-08-14 04:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `category_id`, `created_at`, `update_at`) VALUES
(41, 'Composer Autoload', '             JSON – composer.json \r\n{\r\n \"name\": \"fairway/app\",\r\n \"authors\": [\r\n {\r\n \"name\": \"Ei Maung\",\r\n \"email\": \"eimg@fairwayweb.com\"\r\n }\r\n ],\r\n \"require\": {\r\n \"nesbot/carbon\": \"^2.43\"\r\n },\r\n \"autoload\": {\r\n \"psr-4\": {\r\n \"App\\\\\": \"App/\"\r\n }\r\n }\r\n}\r\n        ', '66bc33154adc6_anc_download (3).jfif', 21, '2024-08-14 04:31:17', '2024-08-14 04:31:17'),
(42, 'MYSQL', 'MySQL uses **Structured Query Language (SQL)**, which is a standardized language for managing and manipulating databases. Within SQL, there are several types of commands you can use in MySQL, including:\r\n\r\n- **Data Query Language (DQL)**: For querying data (e.g., `SELECT`).\r\n- **Data Definition Language (DDL)**: For defining database structures (e.g., `CREATE`, `ALTER`, `DROP`).\r\n- **Data Manipulation Language (DML)**: For manipulating data (e.g., `INSERT`, `UPDATE`, `DELETE`).\r\n- **Data Control Language (DCL)**: For controlling access to data (e.g., `GRANT`, `REVOKE`).\r\n- **Transaction Control Language (TCL)**: For managing transactions (e.g., `COMMIT`, `ROLLBACK`).\r\n\r\nThese categories encompass the various SQL commands you can use to interact with and manage your MySQL databases¹².\r\n\r\nIs there a specific type of SQL command you\'re interested in learning more about?\r\n\r\nSource: Conversation with Copilot, 8/4/2024\r\n(1) MySQL SQL - W3Schools. https://www.w3schools.com/mysql/mysql_sql.asp.\r\n(2) SQL Tutorial - W3Schools. https://www.w3schools.com/sql/.\r\n(3) MySQL - Wikipedia. https://en.wikipedia.org/wiki/MySQL.\r\n(4) What Is MySQL? | Oracle. https://www.oracle.com/mysql/what-is-mysql/.\r\n(5) MySQL :: MySQL 8.4 Reference Manual :: 1.2.1 What is MySQL?. https://dev.mysql.com/doc/refman/8.4/en/what-is-mysql.html.', '66bc335701507_anc_download (1).jfif', 22, '2024-08-14 04:32:23', '2024-08-14 04:32:23'),
(45, 'dsfa', 'Description \r\n                    ', '66bc33dda7bb4_anc_download (4).jfif', 23, '2024-08-14 04:34:37', '2024-08-14 04:34:37'),
(46, 'Scope Resolution Opearator in php', 'The **Scope Resolution Operator** in PHP, also known as the double colon (`::`), is used to access static properties, constants, and overridden methods of a class. Here are some key points about it:\r\n\r\n### Key Characteristics\r\n- **Static Properties and Methods**: It allows access to static properties and methods of a class.\r\n- **Constants**: It can be used to access class constants.\r\n- **Inheritance**: It can be used to call methods from a parent class.\r\n\r\n### Example in PHP\r\n```php\r\n<?php\r\nclass MyClass {\r\n    const CONST_VALUE = \'A constant value\';\r\n    public static $staticVar = \'Static variable\';\r\n\r\n    public static function staticMethod() {\r\n        echo \"Static method\\n\";\r\n    }\r\n}\r\n\r\n// Accessing constant\r\necho MyClass::CONST_VALUE; // Outputs: A constant value\r\n\r\n// Accessing static property\r\necho MyClass::$staticVar; // Outputs: Static variable\r\n\r\n// Accessing static method\r\nMyClass::staticMethod(); // Outputs: Static method\r\n?>\r\n```\r\n\r\n### Using `self`, `parent`, and `static`\r\n- **self**: Refers to the current class.\r\n- **parent**: Refers to the parent class.\r\n- **static**: Refers to the called class in a context of late static binding.\r\n\r\n#### Example with Inheritance\r\n```php\r\n<?php\r\nclass ParentClass {\r\n    protected function myFunc() {\r\n        echo \"ParentClass::myFunc()\\n\";\r\n    }\r\n}\r\n\r\nclass ChildClass extends ParentClass {\r\n    public function myFunc() {\r\n        parent::myFunc(); // Calls the parent class method\r\n        echo \"ChildClass::myFunc()\\n\";\r\n    }\r\n}\r\n\r\n$child = new ChildClass();\r\n$child->myFunc();\r\n// Outputs:\r\n// ParentClass::myFunc()\r\n// ChildClass::myFunc()\r\n?>\r\n```\r\n\r\n### Usage\r\n- **Purpose**: The scope resolution operator is used to specify the scope in which a property or method exists, especially when dealing with static properties/methods and constants.\r\n- **Flexibility**: It provides a way to access class members without creating an instance of the class.\r\n\r\nWould you like more examples or have any specific questions about the scope resolution operator in PHP?\r\n\r\nSource: Conversation with Copilot, 7/16/2024\r\n(1) PHP: Scope Resolution Operator (::) - Manual. https://www.php.net/manual/en/language.oop5.paamayim-nekudotayim.php.\r\n(2) Scope Resolution operator in PHP - GeeksforGeeks. https://www.geeksforgeeks.org/scope-resolution-operator-in-php/.\r\n(3) PHP Scope Resolution Operator (::) - Online Tutorials Library. https://www.tutorialspoint.com/php-scope-resolution-operator.\r\n(4) Scope Resolution Operator in PHP - Ali Parsifar. https://parsifar.com/scope-resolution-operator-in-php/.', '66bc3431d04b3_anc_download (5).jfif', 24, '2024-08-14 04:36:01', '2024-08-14 04:36:01'),
(47, 'Array Intersection function ရဲ့အသုံး၀င်ပုံများ 🤔', '                                        \r\nArray intersection function အကြောင်းသိပြီးကြပြီလား Developer ကြီးတို့ရေ 👀\r\n\r\nဒီ function လေးကတော့ multiple array တွေကို input အဖြစ်ယူ၊ filter လုပ်ပြီး အဲ့ array တွေအကုန်လုံးမှာပါနေတဲ့ element တွေကို return ပြန်ပေးပါတယ်။\r\n\r\nCode example လေးနဲ့အတူ ကြည့်လိုက်ရအောင် 👀\r\n\r\nfunction intersection(...arrays) {\r\n  if (arrays.length === 0) return [];\r\n\r\n  \r\n  const [firstArray, ...restArrays] = arrays;\r\n\r\n  return firstArray.filter(item => {\r\n    return restArrays.every(array => array.includes(item));\r\n  });\r\n}\r\n\r\nပထမဆုံး function intersection(...arrays) {} ပထမဆုံးအနေနဲ့  function ကို define လုပ်ပါတယ်။\r\n  if (arrays.length === 0) return []; ဒီ code က တော့  array ရှိမရှိစစ်မှာဖြစ်ပြီး array တစ်ခုမှ မရှိရင်တော့ empty array ကို return ပြန်ပေးမှာပါ…\r\n\r\nconst [firstArray, ...restArrays] = arrays;\r\n\r\nဒီ code လေးကတော့ first array ကို ကျန်တဲ့ array တွေနဲ့ခွဲခြားဖို့ဖြစ်ပါတယ်။\r\n\r\nreturn firstArray.filter(item => {\r\n    return restArrays.every(array => array.includes(item));\r\n  });\r\n}\r\n\r\nreturn တဲ့နေရာမှာ firstarray ကို filter သုံးပေးပြီး output ထုတ်ပေးတဲ့နေရာမှာဆိုရင်လည်း array အကုန်လုံးမှာပါနေတဲ့ တူတဲ့ ဟာတွေကိုရွေးထုတ်ပေးသွားမှာပါ။\r\n\r\nconst array1 = [1, 2, 3, 4];\r\nconst array2 = [2, 3, 5];\r\nconst array3 = [2, 3, 6];\r\n\r\nconst result = intersection(array1, array2, array3);\r\nconsole.log(result); // Output: [2, 3]\r\n\r\nဒီ code လေးမှာဆိုရင် array သုံးခုလုံးမှာပါနေတဲ့ 2,3 ကိုအဖြေမှာ ပြန်ထုတ်ပေးထားတာကို တွေ့ရမှာပါ။\r\n\r\nဒါကတော့ array intersection function လေးရဲ့အသုံးပြုပုံပဲဖြစ်ပါတယ်။\r\n\r\nDeveloper ကြီးတို့လည်းလိုက်သုံးကြည့်ကြဖို့မမေ့ကြနဲ့နော်။\r\n\r\nသူငယ်ချင်းတွေသိသွားအောင်လည်း မျှဝေပေးသွားကြပါဦး။\r\n\r\n\r\n                                ', '66bc3488cc3bd_anc_download (6).jfif', 25, '2024-08-14 04:37:28', '2024-08-14 04:37:28'),
(48, 'Iterable', '                    Certainly! In programming, an **iterable** is an object capable of returning its members one at a time. Here are some key points:\r\n\r\n1. **Definition**: An iterable is anything that can be looped over. It includes:\r\n   - **Sequence Types**: Such as lists, strings, and tuples.\r\n   - **Non-Sequence Types**: Like dictionaries, file objects, and user-defined classes with an `__iter__()` method or a `__getitem__()` method that implements sequence semantics¹².\r\n\r\n2. **Iteration Process**:\r\n   - When you use a loop (explicit or implicit) to go over a group of items, that\'s iteration.\r\n   - An iterable has an `__iter__` method that returns an **iterator**, or it defines a `__getitem__` method for sequential indexes starting from zero.\r\n   - An **iterator** is an object with a `next()` method (Python 2) or `__next__()` method (Python 3). It provides items one by one during iteration¹.\r\n\r\nRemember, iterables allow you to work with collections of data in a systematic way. If you have more questions or need further assistance, feel free to ask! 😊¹²\r\n\r\nSource: Conversation with Copilot, 7/12/2024\r\n(1) What are iterator, iterable, and iteration? - Stack Overflow. https://stackoverflow.com/questions/9884132/what-are-iterator-iterable-and-iteration.\r\n(2) What Is an Iterable in Python? – The Renegade Coder. https://therenegadecoder.com/code/what-is-an-iterable-in-python/.\r\n(3) Making Sense of Python Iterables and Iterators. https://pythonsimplified.com/making-sense-of-python-iterables-and-iterators/.\r\n(4) Iterators and Iterables in Python: Run Efficient Iterations. https://realpython.com/python-iterators-iterables/.\r\n\r\nCreating your own iterable in Python involves defining a class with the `__iter__()` and `__next__()` methods. Here\'s a concise guide:\r\n\r\n- **Define the Class**: Start by defining a class that will represent your iterable.\r\n- **Implement `__iter__()`**: This method will initialize and return the iterator object, often `self`.\r\n- **Implement `__next__()`**: Define this method to return the next item in the sequence. Raise `StopIteration` when there are no more items.\r\n- **Instantiate & Iterate**: Create an instance of your class and use it with a `for` loop to access the elements.\r\n\r\nHere\'s a simple example:\r\n\r\n```python\r\nclass MyIterable:\r\n    def __init__(self, limit):\r\n        self.limit = limit\r\n        self.counter = 0\r\n\r\n    def __iter__(self):\r\n        return self\r\n\r\n    def __next__(self):\r\n        if self.counter < self.limit:\r\n            self.counter += 1\r\n            return self.counter\r\n        else:\r\n            raise StopIteration\r\n\r\n# Create an instance and iterate\r\nmy_iterable = MyIterable(5)\r\nfor item in my_iterable:\r\n    print(item)\r\n```\r\n\r\nThis will output numbers from 1 to 5, as the `MyIterable` class is an iterable that generates a sequence of integers up to a specified limit.                ', '66bc34f77a7e2_anc_download (7).jfif', 26, '2024-08-14 04:39:19', '2024-08-14 04:39:19'),
(49, 'sadfsd', 'Description \r\n                    ', '66bc38748d60b_anc_download (2).jfif', 22, '2024-08-14 04:54:12', '2024-08-14 04:54:12'),
(50, 'OOP VS Procedural', 'ဒါကြောင့် JavaScript လို\r\nLanguage မျိုးမှာ အရာတော်တော်များများက Object တွေမို့လို့ ရေးတဲ့အ]ါ Imperative ပုံစံ၊\r\nProcedural ပုံစံ၊ OOP ပုံစံ အမျိုးမျိုး ရေးလို့ရပေမယ့် Language ကိုယ်တိုင်ကတော့ Object-Oriented\r\nLanguage ဖြKစ်တယ်လို့ ဆိုနိုင်တဲ့ သဘောမျိုးပါ။\r\nPHP မှာလည်း Imperative ပုံစံ၊ Procedural ပုံစံ၊ OOP ပုံစံ စသည်ဖြKင့် ကုဒ်တွေကို ပုံစံအမျိုးမျိုးနဲ့ ရေး\r\nလို့ရပေမယ့် Language ကိုယ်တိုင်ကတော့ Object-Oriented Language မဟုတ်ပါဘူး။ Procedural\r\nLanguage တစ်]ုသာ ဖြKစ်ပါတယ်။ Standard Class တစ်]ျို့ Language နဲ့အတူ ပါဝင်ပေမယ့် လို]ျင်တဲ့\r\nရလဒ်ရKို့အတွက် Function တွေProcedure တွေကိုသာ အများအားဖြKင့် အသုံးပြုရတာပါ။\r\nJavaScript မှာ String တစ်]ုမှာပါတဲ့ စာလုံးအရေးအတွက် သိ]ျင်ရင် String.length Object\r\nProperty ကို သုံးရပေမယ့် PHP မှာ strlen() Function ကို သုံးရပါတယ်။ JavaScript မှာ Array တစ်\r\n]ုမှာပါတဲ့ Index အရေအတွက်ကို သိ]ျင်ရင် Array.length Object Property ကို သုံးရပေမယ့် PHP\r\nမှာ count() Function ကို သုံးရပါတယ်။ အထက်ကနမူနာမှာ ပြ]ဲ့တဲ့ Array.reduce() Object\r\nMethod လို လုပ်ဆောင်]ျက်မျိုး ရKို့အတွက် array_reduce() Function ကို သုံးရမှာပါ။\r\nဒါကြောင့် PHP ဟာ လို]ျင်တဲ့ရလဒ်ရKို့အတွက် သူမှာအသင့်ပါတဲ့ Standard Function တွေ Procedure\r\n တွေကိုအသုံးပြုရတဲ့ Procedural Language တစ်]ုဖြKစ်တယ် လို့ ဆိုနိုင်တာပါ။ အသုံးဝင်တဲ့ Standard\r\nFunction တွေအမြောက်အများ Language နဲ့အတူ ပါဝင်သလိုပဲ ကိုယ်တိုင်လည်း Function တွေကို\r\nလိုအပ်သလို Kန်တီးရေးသား အသုံးပြုနိုင်ပါတယ်။\r\nPHP မှာ Function တွေရေးသားပုံ၊ ပေ]ါ်ယူအသုံးပြုပုံတွေဟာ JavaScript နဲ့ တော်တော်လေး ဆင်တူပါ\r\nတယ်။ ကွဲပြားမှုတွေလည်း ရှိပါတယ်။ Function တစ်]ုကြေညာKို့အတွက် function Statement ကို\r\nအသုံးပြုပြီးတော့ အ]ုလို ရေးသားနိုင်ပါတယ', '66bc38d12b94b_anc_download (8).jfif', 27, '2024-08-14 04:55:45', '2024-08-14 04:55:45'),
(51, 'Interface', 'In PHP, an **interface** is a blueprint for a class that defines a set of methods that the class must implement. Here are some key points about interfaces in PHP:\r\n\r\n### Key Characteristics\r\n- **Declaration**: An interface is declared using the `interface` keyword.\r\n- **Methods**: All methods in an interface are abstract by default, meaning they do not have a body and must be implemented by the class that implements the interface.\r\n- **No Properties**: Interfaces cannot contain properties.\r\n- **Public Methods**: All methods declared in an interface must be public.\r\n\r\n### Example in PHP\r\n```php\r\n<?php\r\ninterface Animal {\r\n    public function makeSound();\r\n}\r\n\r\nclass Dog implements Animal {\r\n    public function makeSound() {\r\n        echo \"Woof!\\n\";\r\n    }\r\n}\r\n\r\nclass Cat implements Animal {\r\n    public function makeSound() {\r\n        echo \"Meow!\\n\";\r\n    }\r\n}\r\n\r\n$dog = new Dog();\r\n$dog->makeSound(); // Outputs: Woof!\r\n\r\n$cat = new Cat();\r\n$cat->makeSound(); // Outputs: Meow!\r\n?>\r\n```\r\n\r\n### Usage\r\n- **Purpose**: Interfaces are used to define a contract that classes must follow. This ensures that different classes can be used interchangeably if they implement the same interface.\r\n- **Polymorphism**: Interfaces allow for polymorphism, enabling you to write code that can work with objects of different classes that implement the same interface.\r\n\r\n### Benefits\r\n- **Flexibility**: Interfaces provide a way to define methods that must be implemented without dictating how they should be implemented.\r\n- **Multiple Inheritance**: A class can implement multiple interfaces, allowing for more flexible and modular code design.\r\n\r\n### Differences with Abstract Classes\r\n- **Properties**: Interfaces cannot have properties, while abstract classes can.\r\n- **Method Implementation**: All methods in an interface are abstract and must be implemented by the class, whereas abstract classes can have both abstract and non-abstract methods.\r\n- **Inheritance**: A class can implement multiple interfaces but can only inherit from one abstract class.\r\n\r\nWould you like to see more examples or have any specific questions about interfaces in PHP?\r\n\r\nSource: Conversation with Copilot, 7/16/2024\r\n(1) PHP OOP Interfaces - W3Schools. https://www.w3schools.com/PhP/php_oop_interfaces.asp.\r\n(2) PHP: Object Interfaces - Manual. https://www.php.net/manual/en/language.oop5.interfaces.php.\r\n(3) Object Oriented Programming with PHP Interfaces - W3docs. https://www.w3docs.com/learn-php/php-interfaces.html.\r\n(4) Learn What is Interface in PHP with Example | Simplilearn. https://www.simplilearn.com/tutorials/php-tutorial/what-is-interface-in-php-with-example.\r\n(5) What Is an Interface In PHP? | Zend by Perforce. https://www.zend.com/blog/what-interface-php.', '66bc395398e44_anc_download (9).jfif', 28, '2024-08-14 04:57:55', '2024-08-14 04:57:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
