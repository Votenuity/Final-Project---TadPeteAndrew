#Admins
User.create(:email => 'Andrew@Riley.com', :password => 'password', :password_confirmation => 'password', :role => "admin", :first_name => 'Andrew', :last_name => 'Riley',)
User.create(:email => 'Tad@Sherlock.com', :password => 'password', :password_confirmation => 'password', :role => 'admin', :first_name => 'Tad', :last_name => 'Sherlock',)
User.create(:email => 'Silas@Tolliver.com', :password => 'password', :password_confirmation => 'password', :role => 'admin', :first_name => 'Pete', :last_name => 'Tolliver',)

#Candidates
donald = User.create(:email => 'Donald@Trump.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Donald',
            :last_name => 'Trump',
            :bio => "Real estate developer Donald John Trump was born June 14, 1946, in Queens, New York. In 1971 he became involved in large profitable building projects in Manhattan. He opened the Grand Hyatt in 1980, which made him the city's best known and most controversial developer. In 2004 Trump began starring in the hit NBC reality series The Apprentice, which also became an offshoot for The Celebrity Apprentice.",
            :profile_image => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Donald_Trump_by_Gage_Skidmore.jpg/220px-Donald_Trump_by_Gage_Skidmore.jpg",
            :party => "Republican",
            :race_id => 1,
            :family => "Ivanka Trump, Eric Trump, Tiffany Trump, Donald Trump, Jr., Barron Trump",
            :education => "Wharton School of the University of Pennsylvania (1968)",
            :elected_office => "None"
            )

bernie = User.create(:email => 'Bernie@Sanders.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Bernie',
            :last_name => 'Sanders',
            :bio => "Born in 1941, politician Bernie Sanders started out his career as the mayor of Burlington, Vermont. He served four terms as the leader of Vermont's biggest city from 1981 to 1989. Sanders then moved on to the national political arena by winning a seat in the House of Representatives. From 1991 to 2007, he distinguished himself as one of the country's few independent legislators. In 2007, Sanders won election to the U.S. Senate and was reelected in 2012. He announced his plans to run for the Democratic presidential nomination in 2015.",
            :profile_image => "http://a5.files.biography.com/image/upload/c_fill,cs_srgb,dpr_1.0,g_face,h_300,q_80,w_300/MTI5ODcyMjQ1NDQ2MjA5NTA2.jpg",
            :party => "Independent",
            :race_id => 1,
            :family => "Spouse: Jane O’Meara Sanders (m. 1988), Children: Levi Sanders",
            :education => "University of Chicago (1964), Brooklyn College, James Madison High School",
            :elected_office => "Senator (I-VT)"
            )

jim = User.create(:email => 'Jim@Webb.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Jim',
            :last_name => 'Webb',
            :bio => "A Senator from Virginia; born in St. Joseph, Mo., February 9, 1946; graduated high school in Bellevue, Neb.; attended University of Southern California 1963-1964; graduated United States Naval Academy 1968; J.D., Georgetown University Law School 1975; served in the United States Marines 1968-1972; author, screenwriter, and journalist; lawyer; Secretary of the Navy 1987-1988; elected as a Democrat to the United States Senate in 2006, and served from January 3, 2007, to January 3, 2013; was not a candidate for reelection to the Senate in 2012.",
            :profile_image => "http://www.thenation.com/wp-content/uploads/2015/04/jim_webb_2016_ap_img.jpg",
            :party => "Democratic",
            :race_id => 1,
            :family => "Spouse: Hong Le Webb, Children: Jimmy Webb, Amy Webb Hogan, Georgia LeAnh Webb, Sarah Webb, Julia Web",
            :education => "University of Southern California",
            :elected_office => "None"
            )

bobby = User.create(:email => 'Bobby@Jindal.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Bobby',
            :last_name => 'Jindal',
            :bio => "Born in 1971, Bobby Jindal started out in politics while attending Brown University. He worked as an intern for Congressman Jim McCrery. In 1991, Jindal went to Oxford University to study health-care systems. He later worked for the state of Louisiana. In 2001, Jindal became the assistant secretary for the Department of Health and Human Services for President George W. Bush. He won his second bid for governor of Louisiana in 2007. In 2015, Jindal announced that he was running for the 2016 Republican presidential nomination.",
            :profile_image => "http://www.slate.com/content/dam/slate/articles/health_and_science/science/2012/07/120727_SCI_BobbyJindalEX.jpg.CROP.rectangle3-large.jpg",
            :party => "Republican",
            :race_id => 2,
            :family => "Spouse: Supriya Jolly Jindal (m. 1997), Children: Slade Ryan Jindal, Selia Elizabeth Jindal, Shaan Robert Jindal",
            :education => "Oxford University, Brown University",
            :elected_office => "Governor(R-La.)"
            )

hillary = User.create(:email => 'Hillary@Clinton.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Hillary',
            :last_name => 'Clinton',
            :bio => "Hillary Clinton was born on October 26, 1947, in Chicago, Illinois. She married Bill Clinton in 1975. She served as first lady from 1993 to 2001, and then as a U.S. senator from 2001 to 2009. In early 2007, Clinton announced her plans to run for the presidency. During the 2008 Democratic primaries, she conceded her nomination when it became apparent that Barack Obama held a majority of the delegate vote. After winning the national election, Obama appointed Clinton as secretary of state. She was sworn in January 2009 and served in that position until 2013. In the spring of 2015, she announced her plans to run again for the U.S. presidency.",
            :profile_image => "http://cbsnews1.cbsistatic.com/hub/i/r/2014/06/11/80a4c2a9-0fe5-4c9c-9eef-b8176807a96a/thumbnail/620x350/dfee3c0fdb3f3f15c13a93176c886ebb/2014-06-11t155415z1813105711gm1ea6b1uc101rtrmadp3usa-politics-clinton.jpg",
            :party => "Democratic",
            :race_id => 2,
            :family => "Spouse: Bill Clinton (m. 1975), Children: Chelsea Clinton",
            :education => "	Wellesley College and Yale Law School",
            :elected_office => "None"
            )

jesse = User.create(:email => 'Jesse@Ventura.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Jesse',
            :last_name => 'Ventura',
            :bio => "Born James George Janos on July 15, 1951, in Minneapolis, Minnesota, Jesse Ventura went on to find success and fame in the worlds of professional wrestling, acting, and politics.",
            :profile_image => "http://images1.citypages.com/imager/u/original/6551040/ventura_conspiracy_sq.jpg",
            :party => "Independent",
            :race_id => 2,
            :family => "Spouse: Theresa Larson Masters (m. 1975), Children: Tyrel Ventura, Jade Ventura",
            :education => "	North Hennepin Community College",
            :elected_office => "None"
            )

carly = User.create(:email => 'Carly@Fiorina.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Carly',
            :last_name => 'Fiorina',
            :bio => "Carleton (Carly) S. Fiorina was born Cara Carleton Sneed in Austin, Texas on September 6, 1954. After dropping out of law school, she became an AT&T sales rep. She moved up the company ladder and became the first female officer in the Network Systems division. In 1998, she was put in charge of Lucent's Global Service Provider division. A year later, she was tapped as CEO of Hewlett-Packard. After the controversial merger with Compac Computers didn’t meet expectations, Fiorina was forced to resign. She then became a consultant for Republican candidates.",
            :profile_image => "http://www.usnews.com/cmsmedia/33/8a/6248185041438542f36827fa41d6/140930-fiorina-editorial.jpg",
            :party => "Republican",
            :race_id => 3,
            :family => "Spouse: Frank Fiorina (m. 1985)",
            :education => "	University of California, Los Angeles",
            :elected_office => "None"
            )

lincoln = User.create(:email => 'Lincoln@Chafee.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Lincoln',
            :last_name => 'Chafee',
            :bio => "Chafee was the Governor of Rhode Island from 2011 to 2015. First elected governor on the Independent ticket in 2010, he became the only governor not to belong to a major party when he was sworn in January 4, 2011.  Chafee previously served as a Republican U.S. Senator from 1999 to 2007. He succeeded his father in the Senate after the senior Chafee's death in 1999. Lincoln Chafee was appointed to fill the vacancy he won a full, six-year term in 2000. He lost his seat to Democrat Sheldon Whitehouse in the 2006 general election. Chafee left the Republican Party and became an Independent the following year",
            :profile_image => "http://www.famousbirthdays.com/faces/chafee-lincoln-image.jpg",
            :party => "Democratic",
            :race_id => 3,
            :family => "Spouse: Stephanie Chafee, Children: Caleb Chafee, Louisa Chafee, Thea Chafee",
            :education => "Brown University, Montana State University",
            :elected_office => "None"
            )

ralph = User.create(:email => 'Ralph@Nader.com',
            :password => 'password',
            :password_confirmation => 'password',
            :role => 'candidate',
            :first_name => 'Ralph',
            :last_name => 'Nader',
            :bio => "Born on February 27, 1934 in Winsted, Connecticut, Ralph Nader went on to study law and became a crusader of car safety reform in the '60s. In 1971, he founded the consumer advocacy group Public Citizen and has continued to be an opponent of unchecked corporate power. He entered the U.S. presidential race multiple times in the '90s and '00s, with a notable run as part of the Green Party.",
            :profile_image => "http://www.projectcensored.org/wp-content/uploads/2015/05/ralph-nader-photo.jpg",
            :party => "Independent",
            :race_id => 3,
            :family => "Spouse: Stephanie Chafee, Children: Caleb Chafee, Louisa Chafee, Thea Chafee",
            :education => "Harvard Law School, The Gilbert School, Princeton University",
            :elected_office => "None"
            )

Race.create(:title => "The First District Race",
            :district => 1
            )

Race.create(:title => "The Second District Race",
            :district => 2
            )

Race.create(:title => "The Third District Race",
            :district => 3
            )

#using statement_for_issue method from the users model to give a candidate a
# stance on an issue

# Donald Trump
donald.statement_for_issue("Don't forget in the meantime we have a real unemployment rate that's probably 21%. It's not 6.  It's not 5.2 and 5.5.  Our real unemployment rate in fact, I saw the chart the other day , our real unemployment, because you have ninety million people that aren't working. Ninety-three million to be exact. If you start adding it up, our real unemployment rate is 42%.  We have a lot of room.  We have a lot of people who want to work.  But the good people I want them to come back.  I also want people of great talent to come too.","Unemployment")

donald.statement_for_issue("China is bilking us for hundreds of billions of dollars by manipulating and devaluing its currency. Despite all the happy talk in Washington, the Chinese leaders are not our friends. I've been criticized for calling them our enemy. But what else do you call the people who are destroying your children's and grandchildren's future? What name would you prefer me to use for the people who are hell bent on bankrupting our nation, stealing our jobs, who spy on us to steal our technology, who are undermining our currency, and who are ruining our way of life? To my mind, that's an enemy. If we're going to make America number one again, we've got to have a president who knows how to get tough with China, how to out-negotiate the Chinese, and how to keep them from screwing us at every turn.", "Foreign Policy")

donald.statement_for_issue("I've evolved on many issues over the years. And you know who else has? Is Ronald Reagan evolved on many issues. And I am pro-life. And if you look at the question, I was in business. They asked me a question as to pro-life or choice. And I said if you let [that quoted excerpt] run, that I hate the concept of abortion. I hate the concept of abortion. And then since then, I've very much evolved. And what happened is friends of mine years ago were going to have a child, and it was going to be aborted. And it wasn't aborted. And that child today is a total superstar, a great, great child. And I saw that. And I saw other instances. And I am very, very proud to say that I am pro-life.","Abortion")

donald.statement_for_issue("Mexico is beating us economically. They are not our friend, believe me. But they're killing us economically. The U.S. has become a dumping ground for everybody else's problems.
When Mexico sends its people, they're not sending their best. They're sending people that have lots of problems, and they're bringing those problems. They're bringing drugs. They're bringing crime. They're rapists.
And some, I assume, are good people. But I speak to border guards and they tell us what we're getting. And it only makes common sense. They're sending us not the right people.
It's coming from more than Mexico. It's coming from all over South and Latin America, and it's coming probably--probably--from the Middle East. But we don't know. Because we have no protection and we have no competence, we don't know what's happening. And it's got to stop and it's got to stop fast.","Immigration")

donald.statement_for_issue("I generally oppose gun control, but I support the ban on assault weapons and I support a slightly longer waiting period to purchase a gun. With today’s Internet technology we should be able to tell within 72-hours if a potential gun owner has a record.", "Gun Control")

#Bernie Sanders

bernie.statement_for_issue("I think the weakest part is that there was not a full recognition that while we have made enormous progress, the reality is that real unemployment, is not 5.5%, it is 11% including those people who have given up looking for work and are working part-time. Youth unemployment remains 18%, and it's part of a 40-year trajectory the American middle class continues to decline, and we need very bold action.","Unemployment")

bernie.statement_for_issue("This country has a $14.5 trillion national debt, in part owing to two wars that have not been paid for. We have been at war in Afghanistan for the last 10 years and paid a high price both in terms of casualties and national treasure. This year alone, we will spend about $100 billion on that war. In my view, it is time for the people of Afghanistan to take full responsibility for waging the war against the Taliban. While we cannot withdraw all of our troops immediately, we must bring them home as soon as possible. I appreciate the president’s announcement, but I believe that the withdrawal should occur at significantly faster speed and greater scope.","Foreign Policy")

bernie.statement_for_issue("We are not returning to the days of back-room abortions, when countless women died or were maimed. The decision about abortion must remain a decision for the woman, her family, and physician to make, not the government.","Abortion")

bernie.statement_for_issue("We are a nation of immigrants. I am the son of an immigrant myself. Their story, my story, our story is a story of America: hard-working families coming to the United States to create a brighter future for their children. The story of immigrants is the story of America, a story rooted in family and fueled by hope. It continues today in families all across the United States.","Immigration")

bernie.statement_for_issue("Folks who do not like guns is fine. But we have millions of people who are gun owners in this country -- 99.9% of those people obey the law.  I want to see real, serious debate and action on guns, but it is not going to take place if we simply have extreme positions on both sides. I think I can bring us to the middle.","Gun Control")

#Jim Webb

jim.statement_for_issue("This Administration and its supporters - such as my opponent - have spent years asking us to trust their judgment on issues that are not going our way. “Trust us,” they say. “Free trade and global corporations will change everything. Jobs won’t come back, but other ones will be created.","Unemployment")

jim.statement_for_issue("I’ll use that power not only to stop the rubber stamp that’s been given to the White House, but to shift our focus back to where it belongs: the broader, international war on terror, and the strategic threats of emerging nations such as China. That means working with allies, partnering with armed forces around the globe, sharing common burdens and working for the common good.","Foreign Policy")

jim.statement_for_issue("Webb backs abortion rights as defined by the Supreme Court’s ruling in Roe v. Wade. ' I believe the power of the government ends at my front door unless there is a compelling reason to come inside,' he says.","Abortion")

jim.statement_for_issue("The immigration debate is divided into three separate issues. How can we secure our border? What should we do about the 11 million undocumented workers? And, lastly there is the guest worker question. It is necessary to separate out the 3 issues. Approaching the issue using an omnibus bill that attempts to solve all 3 issues simultaneously creates a political stalemate that delays the border security solution. Once the border is secure we can develop a fair solution to other immigration issues.","Immigration")

jim.statement_for_issue("An advocate for less restrictive access to guns, Webb sees the issue as a critical self-defense right. The former senator himself has held a permit to carry a weapon in Virginia and defended his ownership when an aide brought one of his loaded pistols to Capitol Hill, violating Washington, D.C., law at the time. Webb has voted to allow firearms in checked baggage on Amtrak trains and co-sponsored a bill to repeal some of D.C.’s restrictions and requirements on gun ownership.","Gun Control")

#Bobby Jindal

bobby.statement_for_issue("We will revamp our workforce training programs to cultivate the highest-trained, most skilled workforce in the world right here in Louisiana. These are all critical steps toward greater business growth, more jobs, and more opportunities for our young people so our children and our grandchildren no longer have to move away to pursue their dreams.","Unemployment")

bobby.statement_for_issue('I believe America should remain the greatest country in the world. When I was a kid, that was safe to say and aspire to. Not so today. There are many political leaders in America today who do not like the sound of that. They cringe at the thought of American exceptionalism and superiority. It strikes them as unsophisticated, unrefined, kind of "cowboyish." They think our aspirations of leadership are arrogant evidence of a fundamental intolerance of other nations and their cultures. They believe America should be content to settle in our place as just another country in the family of nations. They are ashamed we would seek to be the greatest country in the world.',"Foreign Policy")

bobby.statement_for_issue('An abortion “patient” is the “unborn baby,” not the woman having the abortion',"Abortion")

bobby.statement_for_issue("Our southern border is the only place in the world where a highly developed country shares a long border with a developing country. Unable to produce enough jobs for its roughly 100 million residents, Mexico is effectively exporting its unemployment to us. The income gap between the US & Mexico is the largest between any two contiguous countries in the world. This dichotomy has created the current immigration crisis, with an estimated 10 to 12 million illegal immigrants now residing in America.","Immigration")

bobby.statement_for_issue("Every state should make sure this information is being reported in the background system. We need to make sure that background system is working.","Gun Control")

#Hillary Clinton

hillary.statement_for_issue("I got to vote to raise the minimum wage. I put in legislation which said that Congress should not get a salary increase until they did raise the minimum wage, and I am putting that back in, because I agree that by the time we got it raised after 10 years, it was already out of date.","Unemployment")

hillary.statement_for_issue('I approached my work with confidence in our enduring strengths and purpose, and humility about how much remains beyond our knowledge and control. I worked to reorient American foreign policy around what I call "smart power." To succeed in the 21st century, we need to integrate the traditional tools of foreign policy--diplomacy, development assistance, and military force--while also tapping the energy and ideas of the private sector and empowering citizens, especially the activists, organizers, and problem solvers we call civil society, to meet their own challenges and shape their own futures. We have to use all of Americas strengths to build a world with more partners and fewer adversaries, more shared responsibility and fewer conflicts, more good jobs and less poverty, more broadly based prosperity with less damage to our environment.',"Foreign Policy")

hillary.statement_for_issue("I think abortion should remain legal, but it needs to be safe and rare. And I have spent many years now, as a private citizen, as first lady, and now as senator, trying to make it rare, trying to create the conditions where women had other choices.","Abortion")

hillary.statement_for_issue('In 2009, more than 55 million Americans were immigrants or the children of immigrants. These first- or second-generation Americans were valuable links back tot heir home countries and also significant contributors to our own economic, cultural, and political life. Immigration helped keep the US population young and dynamic at a time when many of our partners and competitors were aging. Russia, in particular, faced what President Putin himself has called a "demographic crisis." Even China, because of its "One Child Policy," was headed toward a demographic cliff. I only wish that the bipartisan bill passed the Senate in 2013 reforming our immigration laws could pass the House.',"Immigration")

hillary.statement_for_issue("I respect the Second Amendment. I respect the rights of lawful gun owners to own guns, to use their guns, but I also believe that most lawful gun owners whom I have spoken with for many years across our country also want to be sure that we keep those guns out of the wrong hands. And as president, I will work to try to bridge this divide, which I think has been polarizing and, frankly, doesn’t reflect the common sense of the American people. We will strike the right balance to protect the constitutional right but to give people the feeling & the reality that they will be protected from guns in the wrong hands.","Gun Control")

#Jesse Ventura

jesse.statement_for_issue('It’s vital to our ongoing economic health that we have a well-trained, flexible, and healthy workforce that allows us to be quickly responsive to the opportunities that globalization presents. That means training and retraining constantly during a person’s working life. It means looking after displaced workers to get them back into the game with salable skills. It means providing adequate medical care and benefits to injured workers, so that they can return to suitable work as soon as possible. It means finding new workers. When someone says, “We need good people who can do X, Y, and Z. Do you have them for us?” We want to be able to say, “You bet we do!”',"Unemployment")

jesse.statement_for_issue("I believe that the one-world government everyone’s chattering about probably isn’t going to happen. People are incorrigible individualists; they’re never going to be happy with a single system of government. I think enough people realize that they’re better off with choices. If they really can’t stand the government in one country, they can emigrate to another. Just look at the people from around the world who line up to get into the US. If enough people get fed up with their government, they can change it-witness the fall of Communism in Europe.","Foreign Policy")

jesse.statement_for_issue("My views on abortion come from my mom. She was a nurse in surgery for her entire adult life, and used to tell me how terrible it was before Roe v Wade--when back-alley abortions often placed the woman's life in danger. Today, some people live under a false premise that, if the government makes something illegal, it will go away. But then the illegal activity is simply controlled by an underground or criminal element. And, in the case of abortion, you will not receive the safety and precautions necessary.","Abortion")

jesse.statement_for_issue("Illegal immigration is just that, illegal. We owe those individuals who are illegally in the US emergency medical treatment when it is needed, but no education benefits, financial assistance or other benefits that all legal immigrants and US citizens are entitled to. American citizens pay for their benefits through taxes illegal immigrants do not. If we provide free services to illegal immigrants, our actions encourage and support illegal activity, rather than discourage or punish it.","Immigration")

jesse.statement_for_issue("The Second Amendment grants us the freedom to possess and use firearms-and that’s about the part where most people stop reading-but it goes on to say that it rants us that right because of a responsibility. To me, that means we are entrusted with using our firearms safely, for the protection of ourselves and others. I’m no advocate of gun control, but I do think in recent years we’ve made way too much noise on the “rights” side of the equation, and not enough on the “responsibility” side. [But] forcing people to register their firearms goes against the intent of the Second Amendment.","Gun Control")

#Carly Fiorina

carly.statement_for_issue("We have to remember that a lot of minimum-wage jobs are jobs where people start … So we need to be honest about the consequences of raising a minimum wage too high. One of the consequences is that young people who are trapped in poor neighborhoods will have less opportunities to learn skills and move forward.","Unemployment")

carly.statement_for_issue("American leadership matters in the world. American strength matters in the world. And it particularly matters when things are going wrong. I think President Obama has made two crucial errors. First, he confuses ending a war with securing the peace. And unfortunately, the way he ended the wars in Iraq and is attempting to end the war in Afghanistan are making both of those situations very, very troublesome. Secondly, he continues to believe that his words matter. And his words matter less and less because both our friends and our allies as well as our enemies have figured out that words do not signal intention. There is no execution behind them. And that creates a situation in which our allies believe they cannot count on us and our enemies believe they can ignore us.","Foreign Policy")

carly.statement_for_issue("I am against it, except in cases of rape, incest, and when the pregnancy threatens the life of the mother.","Abortion")

carly.statement_for_issue('What they should do is systematically and soberly pass a series of bills to solve a decades-old problem. And they should point out to Hispanics all over this nation that this president has taken advantage of them. He sunk comprehensive immigration reform in 2007. He did nothing to push forward immigration reform when he had the Senate, the House, and the White House. He said in 2011 and 2012 he could not do anything. And then he delayed his action for the elections. Unbelievable cynicism.',"Immigration")

carly.statement_for_issue("Fiorina has said that she is a strong supporter of second-amendment gun rights and that she opposed the 1994 bill which banned a large group of semi-automatic or assault weapons. In the 2010 U.S. Senate race, Fiorina said the No-Fly list is broad and some people on it should be allowed to own a gun. Politifact reviewed her statements on the issue and noted that at the time she did not have a firm stance on other potential proposed limits on gun access.","Gun Control")

#Lincoln Chafee

lincoln.statement_for_issue("Increase funding for national job-training programs that re-train displaced workers or teach skills needed in today’s job market. Increase the federal minimum wage.","Unemployment")

lincoln.statement_for_issue("Every action we take in this Muslim nation tends to push Pakistanis to one side or the other of our roster of friends and enemies. In my time in Washington, I saw the Bush administration doing things that were virtually certain to promote extremism in this strategic country between the Middle East and the subcontinent [especially on the topic of getting] tougher on Afghan fighters taking sanctuary in Pakistan.","Foreign Policy")

lincoln.statement_for_issue("The freedoms granted to America in our Constitution should never be abridged. I strongly support a woman's right to make her own personal reproductive decisions.","Abortion")

lincoln.statement_for_issue("Lincoln Chafee is committed to helping immigrants integrate into our society and become US citizens. As U.S. Senator, supported the Secure America and Orderly Immigration Act (S. 1033), an immigration reform bill that incorporated legalization, guest worker programs, and border enforcement components. As governor, one of his first acts will be to repeal the executive order on E-Verify.","Immigration")

lincoln.statement_for_issue("The freedoms granted to America in our Constitution should never be abridged. I believe in common sense adherence to the Second Amendment.","Gun Control")

#Ralph Nader

ralph.statement_for_issue("The issue of labor law reform, repealing the notorious Taft-Hartley Act that keeps workers who are now more defenseless than ever against corporate globalization from organizing to defend their interests. Cracking down on corporate crime. The mainstream media repeatedly indicating how trillions of dollars have been drained and fleeced and looted from millions of workers and investors who don’t have many rights these days, and pensioners.","Unemployment")

ralph.statement_for_issue('Ralph Nader has summed up his foreign policy by saying “the United States should be the world’s humanitarian superpower. Our foreign policy must redefine the elements of global security, peace, arms control, an end to nuclear weapons and expand the many assets of our country to launch, with other nations, major initiatives against global infections diseases.”',"Foreign Policy")

ralph.statement_for_issue('Ralph Nader endorses the full eleven-point agenda for economic, social and political rights of women put forward by the National Organization for Women, which includes the following section on Reproductive Rights: “NOW supports access to safe and legal abortion, to effective birth control, to reproductive health and education. We oppose attempts to restrict these rights through legislation.”',"Abortion")

ralph.statement_for_issue('“Immigration is a challenging issue that must be addressed in a more cohesive way. We need to address economic justice in the US and the world and recognize the basic human rights of all people,” Nader says. “The long term solution to immigration is reducing the rich poor divide between the United States and other nations by peacefully supporting democratic movements.”',"Immigration")

ralph.statement_for_issue("Make sure the weapons are designed safely with trigger locks.  Strong law enforcement so that they’re not falling into the hands of criminals.  Look at a weapon the way you look at a car. You’ve got to know how to handle it. You should be licensed.  There are certain weapons that should be banned","Gun Control")
