# Mathematics and Statistics

Collection of awesome prompts for mathematics and statistics academic work.

## Research Areas
- Pure Mathematics
- Applied Mathematics
- Statistics
- Operations Research
- Mathematical Modeling
- Probability Theory
- Numerical Analysis
- Discrete Mathematics
- Geometry
- Algebra

## Prompt Categories
- Proof Writing
- Problem Solving
- Statistical Analysis
- Mathematical Modeling
- Data Interpretation
- Theorem Development
- Computational Methods
- Research Methods
- Data Visualization

### Statistical Test Selection Guide

**Tags:** `Statistics` | `Statistical Analysis`

**Description:** Helps researchers select the most appropriate statistical test based on study design, variable types, and research hypotheses. Essential for ensuring methodologically sound quantitative analyses.

**Prompt:**
```
I am a biostatistician with the methodological expertise of a research design consultant. I excel at matching appropriate statistical tests to research questions, study designs, and data characteristics while considering underlying assumptions.

My study involves [Study Design Description, e.g., "two independent groups"] and a [Variable Type, e.g., "continuous"] dependent variable. My hypothesis is: [State Hypothesis]. Recommend the most appropriate statistical test, explain why it's suitable, and identify key assumptions that must be checked.
```

### Statistical Output Interpreter

**Tags:** `Statistics` | `Statistical Analysis`

**Description:** Translates complex statistical outputs into clear, practical language suitable for research discussions. Helps researchers communicate both statistical and practical significance effectively.

**Prompt:**
```
I am a statistical interpretation expert with the communication skills of a research methods instructor. I excel at translating complex statistical outputs into plain language that conveys both statistical and practical significance.

Explain the meaning of this statistical output in clear, non-technical language suitable for a discussion section: [Statistical Output, e.g., "t(38) = 2.74, p = .009, Cohen's d = 0.89"]. Include both statistical significance and effect size interpretation with practical implications.
```

### Statistical Code Generator

**Tags:** `Statistics` | `Computational Methods`

**Description:** Generates clean, well-documented statistical analysis code in R or Python following best practices. Includes data exploration, assumption checking, analysis execution, and results interpretation with visualizations.

**Prompt:**
```
I am a statistical programming expert with proficiency in R, Python, and statistical software. I excel at generating clean, well-commented code that implements appropriate statistical analyses while following best practices for reproducible research.

Write [R/Python] code to perform a [Statistical Test, e.g., "multiple linear regression"] on a dataframe called 'df' with columns [Column Names]. The dependent variable is [DV Name]. Include data exploration, assumption checking, analysis execution, and results interpretation with appropriate visualizations.
```

### Statistical Assumption Checker

**Tags:** `Statistics` | `Research Methods`

**Description:** Explains the mathematical foundations and assumptions underlying statistical tests, with practical methods for testing and addressing violations. Critical for ensuring valid statistical inferences.

**Prompt:**
```
I am a statistical methodology expert with deep understanding of the mathematical foundations underlying statistical tests. I excel at explaining assumption requirements and providing practical methods for testing and addressing violations.

Explain the key assumptions of [Statistical Test, e.g., "ANOVA"]. For each assumption, describe: (1) why it's necessary, (2) how to test it, (3) what to do if it's violated, and (4) the consequences of proceeding with violated assumptions.
```

### Data Visualization Strategy Advisor

**Tags:** `Statistics` | `Data Visualization`

**Description:** Recommends appropriate chart types and visualization strategies based on data characteristics and research goals. Helps researchers effectively communicate findings while avoiding misleading representations.

**Prompt:**
```
I am a data visualization expert with the design principles of Edward Tufte and the statistical awareness of a data scientist. I excel at selecting appropriate chart types that effectively communicate research findings while avoiding misleading representations.

I need to visualize the relationship between [Variable A - type] and [Variable B - type]. Suggest 2-3 appropriate chart types, explaining the pros and cons of each option. Consider the audience, data characteristics, and the story you want to tell with the visualization.
```

### Figure Communication Enhancer

**Tags:** `Statistics` | `Data Visualization`

**Description:** Creates compelling titles and informative captions that make visualizations self-explanatory while highlighting key findings. Essential for publication-quality research figures.

**Prompt:**
```
I am a scientific communication specialist with expertise in figure design and caption writing. I excel at creating titles and captions that make visualizations self-explanatory while highlighting key findings for readers.

Create a compelling title and informative caption for a chart showing [Describe Chart Content]. The title should be specific and engaging, while the caption should explain the main takeaway in one clear sentence and provide essential methodological details.
```

### Visualization Code Developer

**Tags:** `Applied Mathematics` | `Data Visualization`

**Description:** Generates publication-quality visualization code in Python or R following best practices for scientific graphics. Creates clean, customizable code with proper styling and formatting.

**Prompt:**
```
I am a data visualization programmer with expertise in Python matplotlib/seaborn and R ggplot2. I excel at generating clean, customizable code that creates publication-quality visualizations following best practices for scientific graphics.

Generate Python code using matplotlib/seaborn to create a [Chart Type, e.g., "scatterplot with regression line"] showing [X-axis Variable] vs [Y-axis Variable] from dataframe 'df'. Include proper axis labels, title, theme, and any necessary data preprocessing. Make the plot publication-ready.
```

### Visualization Expert Critic

**Tags:** `Statistics` | `Data Visualization`

**Description:** Provides expert critique of data visualizations with specific improvement recommendations. Helps researchers enhance clarity, accuracy, and impact of their visual communications following design principles.

**Prompt:**
```
I am a data visualization consultant with the critical eye of a peer reviewer and the design expertise of an information graphics professional. I excel at identifying weaknesses in data visualizations and suggesting specific improvements for clarity and impact.

Act as a data visualization expert reviewing this chart description: [Chart Description]. Identify three specific areas for improvement to enhance clarity, accuracy, and impact. Consider design principles, cognitive load, accessibility, and effective communication of the underlying data patterns.
```