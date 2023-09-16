# Assignment 1: Protests
In recent years the United States has experienced a surge of protests, in support of Black Lives Matter, gender equity, and other social or political issues.

In this assignment, you will work with data from [Count Love](https://countlove.org/), data that is often [cited](https://www.nytimes.com/2020/08/28/us/black-lives-matter-protest.html) by the _New York Times_ when reporting on US demonstrations.

## Learning objectives
By completing the assignment, you will demonstrate the following skills:

- Use of **version control** for managing your code
- Declaring document rendering using **markdown** syntax
- Foundation programming skills in R
- Critical think about data.

## The Assignment
**Instructions and grading**. Assignment instructions, and grading information,
are available in this file: [analysis.R](analysis.R).

**Eight assignment parts**. The file [analysis.R](analysis.R) consists of eight parts.

* Parts 1-6 require you to code in R.
* Part 7 prompts you to critically think about the Count Love dataset.
* Part 8 prompts you to consider your learning.

**Coding and reflection prompts**. You will find two kinds of prompts in [analysis.R](analysis.R):

* *Coding prompts*, which prompt you to write R code in [analysis.R](analysis.R).
* *Reflection prompts*, which prompt you to write responses below
in this file (`README.md`).

**Formatting Your Responses and Reflections**.

* When formatting your written
responses and reflections below, please *retain* all
reflection prompt IDs (e.g., (R.1a), (R.2a), etc.).
* To write clearly,
use markdown code - for example, use **bold**, _italics_, and `code` appropriately; include images or links (if useful); and so forth.

**Getting started**. To get started, we suggest that you open [analysis.R](analysis.R) in RStudio
and open this file in Atom. Or, you might find it more convenient to open
both files in RStudio and flip back and forth with the tabs.

Key point: In [analysis.R](analysis.R), write R code; in this file below,
write in English.

**Questions?** As always, please post on Teams or ask your Instructor or Teaching Assistant.

:computer: Good coding!
   :writing_hand: Good critical thinking!
      :smile: Good-luck!

(_Updated: January 15, 2022, David Hendry_)

## Your Responses and Reflections
* **(R.1a)** Count Love is an organization that aims to utilize data to show the impact of social movements and to build a more compassionate society. As seen in this assignment, they are able to utilize data on protests across the United States to bring attention to social movements.

#### Social Movements
* **(Article #1)** [Black Lives Matter May Be The Largest Movement in U.S. History](https://www.nytimes.com/interactive/2020/07/03/us/george-floyd-protests-crowd-size.html)
* **(Article #2)** [The Persistent Effect of U.S. Civil Rights Protests on Political Attitudes](https://www.jstor.org/stable/26598792)

#### Part 2: Attendees
* **(R.2a)** Since the median (100) is so much smaller than the mean (643) it shows that there are a few very, very large protests that throw off the average number of attendees to a protest. It also tells us that the distribution of data is right skewed, with a few very large protests skewing the data.

#### Part 3: Locations
* **(R.3a)** The number of protests in Washington doesn't surprise me. Washington is a liberal state and much of the population consistently advocates for social change, so it makes sense that there were a lot of protests here.
* **(R.3a)** I think that sapply() is a powerful tool. This function allows us to manipulate mass amounts of data at once, which would normally take many, many lines of code to process.
* **(R.3b)** While there are only 50 states, the data seems to represent 61 states. This is due to errors in spelling and capitalization of the states' abbreviations. If I were to change my analysis, I would see if there is a way to ignore capitalization to negate some of these issues.

#### Part 4: Dates
* **(R.4a)** The significant jump in protests from 2019 to 2020 is not surprising. George Floyd was murdered by police officers in May of 2020, which sparked protests across the entire country for police reform and to stop the killing of African Americans by police officers. These protests continued throughout 2020.

#### Part 5: Protest Purpose
* **(R.5a)** Considering how many protests were accounted for in this dataset, it is surprising that it comes down to such a small number of high level issues. I think that this shows that the United States is divided on some key issues, and that many people are pushing and advocating for change for those key issues.

#### Part 7: Critical Thinking
**(R7.a)**

* **Goals**: The goals of Count Love is to use data to fight the systems of power that are in place and that are oppressing others.
* **Human Values**: One of the most apparent human values of Count Love is usability. They took a very large and important dataset and presented it in a way that is easy to use and view by the user. By creating an interactive map, they allow the user to experience the data in a unique and effortless way.
* **Data sources**: Count Love uses a software to crawl local newspaper and television sites that are reporting on protests across the country. The data is credible as it comes from news sources that publish verified information.
* **Direct stakeholders** The first example that I could think of is policy makers who could look at Count Love and see what issues are repeatedly being protested across the nation, which can impact policies that they create and advocate for if they see many Americans protesting for the same reasons.
* **Indirect stakeholders**: Going back to my previous example, an indirect stakeholder could be the people who are affected by the policies created from those who review the data from Count Love. These people would be unaware that this information resource exists, but its existence will have an impact on their lives.
* **Benefits and harms**: One potential benefit of Count Love is that it creates a centralized location of data that shows what issues are apparent in our country. This can help people when they make decisions such as candidates to vote for, as they would look at the issues protested via Count Love and the issues that the candidate is fighting for. A potential harm is that it presents unfiltered data on protests in the USA, which can become skewed easily. For example, we could see more protests from the same groups around the same issue over and over again, which can skew the data and lead people to believe that many Americans are advocating for an issue when in reality it is only a small percentage.
* **Summary on power**: Count Love is fighting the systems of power put in place by promoting those who are underprivileged. With their information resource, they are able to highlight key issues that are being protested in the United States often times by those who are underrepresented by the current establishment. By highlighting those who are fighting the systems of power, Count Love is taking action to dismantle that system as well.

#### Part 8: Your Learning
* **(R.8a)** I think the most challenging part of this assignment was remembering everything we learned about coding in R and applying it to the assignment. I found myself struggling with concepts we learned at the beginning of the course and needing to reach out to my TA often. The most interesting part of the assignment was seeing how we can apply what we learned. I enjoyed processing and manipulating the data and being able to derive new information from the data and to draw conclusions. I wish I could explore data visualization more. I want to learn more about making graphs and charts from the data in order to display it in a more impactful way.
