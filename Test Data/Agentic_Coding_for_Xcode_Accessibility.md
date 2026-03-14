# Agentic_Coding_for_Xcode_Accessibility

## [0:00 – 0:01]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Welcome back to the Deep Dive.<|1.58|>

## [0:01 – 0:05]

<|1.58|> Today, we are doing something a little different.<|5.54|>

## [0:05 – 0:14]

<|5.54|> And I have to admit, I didn't think it would be as fascinating<|8.02|> <|8.02|> as it turned out to be.<|9.02|> <|9.02|> - I know what you mean.<|9.86|> <|9.86|> - Usually, we grab a stack of articles, maybe a book,<|12.22|> <|12.22|> and we sort of pull out the big ideas.<|14.26|>

## [0:14 – 0:17]

<|14.26|> But today, we're literally walking through a curriculum.<|17.82|>

## [0:17 – 0:21]

<|17.82|> We're looking at a specific 90 minute workshop.<|21.60|>

## [0:21 – 0:26]

<|21.60|> It's titled "Agentic Coding in X-Code, Accessibility-Focused."<|26.42|>

## [0:26 – 0:46]

<|26.42|> - It sounds so dry on paper, doesn't it?<|28.70|> <|startoftranscript|><|en|><|transcribe|><|0.00|> the genetic coding.<|1.56|> <|1.56|> But when you actually open up the sources,<|3.32|> <|3.32|> we've got the facilitator guide,<|5.16|> <|5.16|> the participant handbook,<|6.72|> <|6.72|> and this amazing prompt library,<|9.36|> <|9.36|> it reads less like a textbook.<|11.28|> <|11.28|> - Yeah, though.<|12.12|> <|12.12|> - And more like a field manual.<|13.04|> <|13.04|> It feels like a survival guide<|14.64|> <|14.64|> for modern software development.<|16.64|> <|16.64|> - That's the vibe I got too.<|18.24|>

## [0:46 – 0:50]

<|18.24|> It feels surprisingly, I don't know, militaristic,<|22.04|>

## [0:50 – 0:56]

<|22.04|> or maybe discipline is the better word.<|23.72|> <|23.72|> - Discipline is exactly it.<|25.16|> <|25.16|> - It's not just, hey, let's ask the AI to write some code.<|27.72|>

## [0:56 – 1:00]

<|startoftranscript|><|en|><|transcribe|><|0.00|> it's this incredibly structured, almost rigid operation.<|4.48|>

## [1:00 – 1:14]

<|4.48|> - Well, it has to be.<|5.36|> <|5.36|> And that's really the core thesis<|6.88|> <|6.88|> of this entire deep dive, I think.<|8.88|> <|8.88|> We are moving from that phase<|10.36|> <|10.36|> of just playing around with AI.<|12.48|> <|12.48|> - The magic parlor trick phase.<|14.16|> <|14.16|> - Exactly where it's a cool demo,<|16.56|> <|16.56|> to actually trying to integrate it<|18.40|>

## [1:14 – 1:18]

<|18.40|> into a professional high stakes engineering workflow.<|22.00|>

## [1:18 – 1:34]

<|22.00|> And specifically for this workshop,<|24.28|> <|24.28|> using XCodes built in coding agent<|26.96|> <|26.96|> to tackle accessibility.<|28.56|> <|startoftranscript|><|en|><|transcribe|><|0.00|> which is one of the hardest things to get right,<|1.84|> <|1.84|> even for season developers.<|3.20|> <|3.20|> - Oh, absolutely.<|4.04|> <|4.04|> It's often an afterthought and it's full of nuance.<|6.24|> <|6.24|> - So let's set the stage a bit<|7.72|> <|7.72|> before we even get into the code.<|9.76|>

## [1:34 – 1:38]

<|9.76|> The facilitator guide, it actually describes<|13.48|>

## [1:38 – 1:46]

<|13.48|> the physical environment for this workshop.<|15.52|> <|15.52|> - It does, yeah.<|16.36|> <|16.36|> - It's not just open your laptops.<|17.84|> <|17.84|> It paints this whole picture.<|19.64|> <|19.64|> It talks about a safety first environment.<|21.92|>

## [1:46 – 1:50]

<|21.92|> It describes the room needing clean, neutral lighting.<|25.08|>

## [1:50 – 1:53]

<|25.08|> It even mentions high contrast projected work spaces.<|28.52|>

## [1:53 – 2:03]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Why go into that level of detail for a coding workshop<|2.54|> <|2.54|> it feels specific?<|4.00|> <|4.00|> - It's all about managing cognitive load.<|6.60|> <|6.60|> Think about it.<|7.44|> <|7.44|> When you're coding with an agent, you're not just typing,<|10.00|>

## [2:03 – 2:15]

<|10.00|> you're managing a conversation, you're reviewing code,<|12.96|> <|12.96|> and you're trying to hold the architecture<|14.84|> <|14.84|> in your head all at once.<|16.16|> <|16.16|> - It's a lot of plates to spin.<|17.36|> <|17.36|> - A lot.<|18.20|> <|18.20|> So the guide is trying to reduce all the external noise,<|21.68|>

## [2:15 – 2:17]

<|21.68|> but there's also a visual discipline thing going on.<|24.34|>

## [2:17 – 2:20]

<|24.34|> Did you catch the rule about the fonts on the projector?<|27.24|>

## [2:20 – 2:23]

<|27.24|> - I did, and honestly, I thought it was a bit much at first.<|29.96|>

## [2:23 – 2:29]

<|startoftranscript|><|en|><|transcribe|><|0.00|> They specify that when the facilitator projects their screen, the prompts, so what the human<|6.24|>

## [2:29 – 2:33]

<|6.24|> types, must be in a large, proportional font, like a sans-serie.<|10.40|>

## [2:33 – 2:34]

<|10.40|> Right.<|11.40|>

## [2:34 – 2:39]

<|11.40|> But the code, what the machine spits out, has to be in monospice.<|16.12|>

## [2:39 – 2:44]

<|16.12|> It sounds like design overkill, but it's actually a brilliant psychological guardrail.<|20.62|>

## [2:44 – 2:49]

<|20.62|> They want the participants to visually, instantly distinguish human intent from machine output.<|25.84|>

## [2:49 – 2:50]

<|25.84|> Oh, I see.<|26.84|>

## [2:50 – 2:54]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Everything just looks like code, you start to treat the prompt as just another part of the script.<|4.54|>

## [2:54 – 3:00]

<|4.54|> But the prompt isn't code, it's the command.<|7.22|> <|7.22|> It's the instruction.<|8.38|> <|8.38|> It's the instruction.<|9.86|>

## [3:00 – 3:05]

<|9.86|> And by making them look different, you force your brain to switch modes between "I am asking"<|15.56|>

## [3:05 – 3:07]

<|15.56|> and it is answering.<|16.86|>

## [3:07 – 3:10]

<|16.86|> That distinction is the perfect segue to the core philosophy.<|20.66|>

## [3:10 – 3:15]

<|20.66|> Because there is this mantra that repeats over and over in these materials.<|24.86|>

## [3:15 – 3:17]

<|24.86|> I think it's in every single module header.<|27.02|>

## [3:17 – 3:21]

<|startoftranscript|><|en|><|transcribe|><|0.00|> AI accelerates, humans decide verification is the workflow.<|4.00|>

## [3:21 – 3:31]

<|4.00|> Verification is the workflow.<|5.36|> <|5.36|> That's the part that really stuck with me.<|6.88|> <|6.88|> Right.<|7.38|> <|7.38|> Because usually we think coding is the workflow.<|10.52|> <|10.52|> Right.<|11.52|> <|11.52|> Verification is just that annoying thing we have to do at the end.<|14.08|>

## [3:31 – 3:40]

<|14.08|> But this whole model flips that on its head.<|16.88|> <|16.88|> The AI does the typing.<|18.68|> <|18.68|> It does the syntax generation.<|21.32|> <|21.32|> It accelerates the keystrokes.<|23.44|>

## [3:40 – 3:44]

<|23.44|> But because it accelerates the production of code, it also accelerates the production<|27.44|>

## [3:44 – 3:52]

<|27.44|> of bugs.<|28.44|> <|startoftranscript|><|en|><|transcribe|><|0.00|> - Ah, faster code, faster bugs.<|2.04|> <|2.04|> - Exactly.<|2.88|> <|2.88|> So your job shifts.<|4.96|> <|4.96|> You are no longer the typist.<|6.68|>

## [3:52 – 3:55]

<|6.68|> You are the lead engineer reviewing a junior colleagues work.<|10.20|>

## [3:55 – 4:05]

<|10.20|> - And they explicitly use that term junior colleague.<|12.72|> <|12.72|> - They do.<|13.56|> <|13.56|> And just think about what that implies.<|15.24|> <|15.24|> A junior colleague is helpful.<|16.88|> <|16.88|> They're eager, they work incredibly fast.<|19.72|>

## [4:05 – 4:08]

<|19.72|> But they're also confidently wrong a lot of the time.<|22.92|>

## [4:08 – 4:15]

<|22.92|> They might use a deprecated API<|24.92|> <|24.92|> because they saw it in some old tutorial.<|26.88|> <|26.88|> They might completely misunderstand a requirement.<|29.36|>

## [4:15 – 4:18]

<|startoftranscript|><|en|><|transcribe|><|0.00|> you would never just copy-pasted Junior's code into production without looking at it.<|3.28|>

## [4:18 – 4:23]

<|3.28|> God no, that's a fireable offense.<|5.40|> <|5.40|> Right.<|6.20|> <|6.20|> So why do we do it with LLMs?<|8.88|>

## [4:23 – 4:28]

<|8.88|> This workshop is designed from the ground up to break that habit.<|13.40|>

## [4:28 – 4:33]

<|13.40|> It's about treating the agent as a partner that needs constant supervision, not a wizard<|18.40|>

## [4:33 – 4:34]

<|18.40|> that just solves your problems.<|19.80|>

## [4:34 – 4:39]

<|19.80|> Okay, so the mission for this episode, for our deep dive, is to extract all those tactical<|24.56|>

## [4:39 – 4:43]

<|24.56|> lessons from this workshop.<|25.96|> <|startoftranscript|><|en|><|transcribe|><|0.00|> We're going to target developers who are using Xcode<|2.68|>

## [4:44 – 4:49]

<|3.52|> Specifically those shipping SwiftUI, we're going to walk through this journey exactly as the workshop lays it out<|8.88|>

## [4:49 – 4:55]

<|8.88|> Sounds good from safety to prompting to fixing bugs generating new features the whole nine yards<|14.84|>

## [4:55 – 4:59]

<|14.92|> Let's get into it section one safety hygiene and setup. This is module<|18.84|>

## [5:00 – 5:06]

<|19.36|> 001 and the guide they called it zero knowledge start they basically assume you have a Mac you have Xcode and you have get installed<|25.76|>

## [5:06 – 5:12]

<|startoftranscript|><|en|><|transcribe|><|0.00|> That's it. But before you even type Hello World, they hit you with these safety first rules,<|5.44|>

## [5:12 – 5:15]

<|5.44|> and they are in bold red text in the guide.<|9.04|>

## [5:15 – 5:22]

<|9.04|> And for very good reason, the first rule is absolute. Never ever paced tokens, keys,<|15.20|>

## [5:22 – 5:25]

<|15.20|> internal URLs, or any confidential files into the chat.<|18.64|>

## [5:25 – 5:29]

<|18.64|> Okay, let me play Devils Advocate here for a second. I know we shouldn't do that,<|22.88|>

## [5:29 – 5:33]

<|22.88|> but if I'm running Xcode locally, and let's say I'm using the on device model,<|26.96|>

## [5:33 – 5:40]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Isn't it safe while the paranoia?<|2.00|> <|2.00|> Because habits bleed.<|3.76|> <|3.76|> Today you're using the local model.<|5.44|> <|5.44|> It feels safe.<|6.48|>

## [5:40 – 5:45]

<|6.48|> Tomorrow your team might decide to switch to a more powerful cloud-based model because it's smarter.<|11.68|>

## [5:45 – 5:47]

<|11.68|> And my muscle memory is already there.<|13.28|>

## [5:47 – 5:53]

<|13.28|> Your muscle memory is paste the API key to debug it.<|16.80|> <|16.80|> You're going to leak that key.<|18.16|> <|18.16|> It's not a question of if but when.<|20.08|>

## [5:53 – 5:57]

<|20.08|> This workshop is trying to build what they call "get hygiene."<|23.28|>

## [5:57 – 6:00]

<|23.28|> I like that term. They also mention local only configuration patterns.<|26.56|> <|26.56|> Yes.<|27.04|>

## [6:00 – 6:05]

<|startoftranscript|><|en|><|transcribe|><|0.00|> So they walk you through creating a.nb file, which is pretty standard for environment variables,<|4.80|>

## [6:05 – 6:10]

<|4.80|> but the very next step is verifying your.ginn or file.<|8.16|> <|8.16|> Ah, the safety net.<|9.52|>

## [6:10 – 6:18]

<|9.52|> The guide literally provides a template that explicitly excludes.nv and a special folder they suggest,<|17.20|>

## [6:18 – 6:24]

<|17.20|> workshop local. The whole idea is that secrets should live on your disk, never in the Git repo,<|23.28|>

## [6:24 – 6:26]

<|23.28|> and certainly never in the prompt history.<|25.36|>

## [6:26 – 6:34]

<|25.36|> It's the digital equivalent of wash your hands before you cook.<|28.48|> <|startoftranscript|><|en|><|transcribe|><|0.00|> It's just basic hygiene.<|1.60|> <|1.60|> It is.<|2.10|> <|2.10|> But then there's this concept of rollback.<|4.80|>

## [6:34 – 6:38]

<|4.80|> The guide has a slide titled, rollback is how we move fast.<|9.28|>

## [6:38 – 6:40]

<|9.28|> That feels counterintuitive.<|10.96|>

## [6:40 – 7:00]

<|10.96|> This is my favorite psychological trick in the entire curriculum.<|14.40|> <|14.40|> Really?<|15.20|> <|15.20|> Why?<|15.84|> <|15.84|> Rollback always feels like failure to me.<|17.92|> <|17.92|> You know, oh crap, I messed up, I have to undo.<|20.48|> <|20.48|> That's the traditional view, right?<|22.16|> <|22.16|> Yeah.<|22.48|> <|22.48|> But when you are working with an agent,<|24.72|> <|24.72|> you want to be able to experiment.<|26.08|> <|26.08|> You want to be able to say,<|27.20|> <|startoftranscript|><|en|><|transcribe|><|0.00|> Hey, try to refactor this entire view to use a different layout system.<|3.60|>

## [7:00 – 7:01]

<|3.60|> Which is a scary thing to ask.<|5.12|>

## [7:01 – 7:05]

<|5.12|> It's terrifying. If you are afraid of completely breaking your project,<|9.04|>

## [7:05 – 7:09]

<|9.04|> you will never ask that. You'll be timid.<|11.44|> <|11.44|> You'll ask for small, safe changes.<|13.36|>

## [7:09 – 7:14]

<|13.36|> So you're saying the ability to just poof, undo it instantly gives you confidence.<|17.52|>

## [7:14 – 7:18]

<|17.52|> Exactly. The workshop forces everyone to practice, get restore.<|22.24|>

## [7:18 – 7:20]

<|22.24|> Literally just wipe out the changes.<|24.24|>

## [7:20 – 7:24]

<|24.24|> Once you realize you are only one command away from a clean slate,<|28.24|>

## [7:24 – 7:49]

<|startoftranscript|><|en|><|transcribe|><|0.00|> You stop walking on egg shells.<|1.84|> <|1.84|> - Okay, yeah.<|2.68|> <|2.68|> - You let the agent be messy because you know<|4.48|> <|4.48|> you can clean it up in a single second.<|6.48|> <|6.48|> It turns undue into a tool for rapid iteration,<|9.44|> <|9.44|> not just air correction.<|10.64|> <|10.64|> - Move fast and break things,<|12.48|> <|12.48|> because we literally have a time machine.<|14.64|> <|14.64|> - That's the mindset.<|15.60|> <|15.60|> - Okay, so once we're safe,<|17.04|> <|17.04|> we have to configure the agent itself.<|19.44|> <|19.44|> And the guide mentions verification again.<|21.68|> <|21.68|> They warn against something called self-report.<|24.32|>

## [7:49 – 7:57]

<|24.32|> - This is such a classic LLM trap,<|26.80|> <|26.80|> so many people fall for this.<|28.24|> <|28.24|> - What is self-report?<|29.36|> <|startoftranscript|><|en|><|transcribe|><|0.00|> It's asking the AI, are you working? Do you see my files?<|3.44|>

## [7:57 – 8:11]

<|3.44|> I mean, the AI says, yes, certainly, I see everything.<|5.84|> <|5.84|> Every single time, even if it sees absolutely nothing,<|8.16|> <|8.16|> LLMs are designed to be helpful conversationalists.<|10.64|> <|10.64|> They don't want to say, "I'm lost or I'm broken."<|12.80|> <|12.80|> So they just make something up?<|14.32|> <|14.32|> They hallucinate, they will say, "Yes, I see your project."<|17.36|>

## [8:11 – 8:14]

<|17.36|> When in reality, they're just looking at their own training data.<|20.40|>

## [8:15 – 8:18]

<|21.04|> You absolutely cannot trust the agent to tell you its own status.<|24.56|>

## [8:18 – 8:21]

<|24.56|> Just how do we know if it's actually working then?<|27.12|>

## [8:21 – 8:24]

<|startoftranscript|><|en|><|transcribe|><|0.00|> We use what the workshop calls the Canary prompt.<|3.12|>

## [8:24 – 8:29]

<|3.12|> I love this term, like the Canary and the coal mine.<|5.36|> <|5.36|> Precisely. It's a connectivity test.<|8.08|>

## [8:29 – 8:35]

<|8.08|> Before they start any real coding, the workshop has every single participant run this exact prompt.<|13.84|>

## [8:36 – 8:40]

<|14.72|> Summarize what files are open in Xcode, keep it to five bullet points.<|19.04|>

## [8:40 – 8:44]

<|19.04|> Okay, why that's specific phrasing, why files that are open.<|22.88|>

## [8:44 – 8:50]

<|22.88|> Because the open files are part of the local context window that Xcode is supposed to feed to the agent.<|28.24|>

## [8:50 – 8:54]

<|28.24|> I see.<|28.88|> <|startoftranscript|><|en|><|transcribe|><|0.00|> The agent can only know what tabs you have open if it is successfully hooked into the<|4.00|>

## [8:54 – 9:00]

<|4.00|> IDE state. If it replies with a generic list of iOS files like appdelegate.swift, which<|10.08|>

## [9:00 – 9:04]

<|10.08|> might not even be in your SwiftUI project, you know, it's just guessing.<|14.00|>

## [9:04 – 9:08]

<|14.00|> It's faking it. It's faking it. But if it comes back and lists Cult of our<|17.84|>

## [9:08 – 9:13]

<|17.84|> DetailView.swift and local config.exe can figure the exact files you have open in your tabs,<|23.20|>

## [9:13 – 9:19]

<|23.20|> then you have positive confirmation. It's locked on. It's locked on. And the five bullet points<|29.20|>

## [9:19 – 9:25]

<|startoftranscript|><|en|><|transcribe|><|0.00|> constraint. Yeah, what's that about? That's to test if it's actually following instructions.<|5.60|>

## [9:25 – 9:30]

<|5.60|> If it gives you a long paragraph, it's not listening closely. If it gives you a neat list<|10.28|>

## [9:30 – 9:34]

<|10.28|> of five or fewer points, it's compliant. It's a handshake. It's a handshake. And the<|14.92|>

## [9:34 – 9:40]

<|14.92|> workshop says you do not proceed until that handshake is verified. Okay, so we've established<|20.44|>

## [9:40 – 9:45]

<|20.44|> safety. We've verified the connection with our canary. Now the guide talks about scope<|25.32|>

## [9:45 – 9:50]

<|startoftranscript|><|en|><|transcribe|><|0.00|> guarding. This sounds defensive. It is defensive. It's a defense against scope<|5.08|>

## [9:50 – 9:54]

<|5.08|> creep. Right. One of the biggest complaints developers have with these AI tools<|9.00|>

## [9:54 – 9:59]

<|9.00|> is that they just they change too much. Yeah. You ask it to fix a button color<|13.84|>

## [9:59 – 10:03]

<|13.84|> and suddenly it's rewriting your entire networking layer or changing all your<|18.08|>

## [10:03 – 10:06]

<|18.08|> import statements because it thought it would be helpful. It's the over-eager<|21.20|>

## [10:06 – 10:10]

<|21.20|> junior colleague again. Hey, I fixed that button for you and I also reorganized<|25.72|>

## [10:10 – 10:13]

<|25.72|> your entire file system. And you're just screaming I didn't ask for any of that.<|28.68|>

## [10:13 – 10:20]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Exactly. So, scope guarding is the technique of explicitly telling the agent where it is and is not allowed to play.<|7.00|>

## [10:20 – 10:27]

<|7.00|> You say, "I only want help with the code I have open. Do not suggest project-wide refactors."<|14.00|>

## [10:27 – 10:28]

<|14.00|> Or even more specific, I guess.<|15.00|>

## [10:28 – 10:35]

<|15.00|> Oh, way more specific. Only modify the body property of this view. Do not touch the helper functions.<|22.00|>

## [10:35 – 10:36]

<|22.00|> So you're setting boundaries.<|23.00|>

## [10:36 – 10:42]

<|23.00|> You're putting it in a container. You're drawing a circle on the ground and saying, "Play in here. Do not go outside this circle."<|29.00|>

## [10:42 – 10:45]

<|startoftranscript|><|en|><|transcribe|><|0.00|> That leads us perfectly into section two,<|2.10|>

## [10:45 – 10:48]

<|2.10|> which is all about the anatomy of a good prompt.<|5.28|>

## [10:48 – 11:12]

<|5.28|> The prompt library in this documentation,<|7.62|> <|7.62|> it breaks down what good it looks like.<|10.00|> <|10.00|> And it's not just chatting.<|11.08|> <|11.08|> - No, it's engineering.<|12.16|> <|12.16|> They define four pillars.<|13.64|> <|13.64|> - Okay, let's break these down,<|14.88|> <|14.88|> 'cause I feel like this is the skill that transfers to,<|17.80|> <|17.80|> you know, everything, not just X code.<|19.44|> <|19.44|> - It absolutely is.<|20.40|> <|20.40|> The first pillar is scope.<|21.60|> <|21.60|> We just talk about this.<|22.64|> <|22.64|> Don't say fix the code.<|23.88|> <|23.88|> - Too big.<|24.72|> <|24.72|> - Way too vague.<|25.56|> <|25.56|> Say fix the cult of our catalog, RoVue.<|27.64|> <|27.64|> Be precise about where the agent should look.<|29.64|>

## [11:12 – 11:15]

<|startoftranscript|><|en|><|transcribe|><|0.00|> OK, scope second is goal.<|3.16|>

## [11:15 – 11:20]

<|3.16|> The goal is the user outcome.<|5.24|> <|5.24|> A bad goal is change the code.<|7.60|>

## [11:20 – 11:23]

<|7.60|> A good goal is make the delete button accessible<|11.00|>

## [11:23 – 11:36]

<|11.00|> to voice over users.<|12.72|> <|12.72|> It focuses on the what and crucially the why.<|15.72|> <|15.72|> Right.<|16.20|> <|16.20|> Third is constraints.<|17.52|> <|17.52|> Constraints are the do nots.<|19.36|> <|19.36|> This is your scope guarding in action.<|21.52|> <|21.52|> Keep the visible UI exactly the same.<|24.08|>

## [11:36 – 11:56]

<|24.08|> Do not use any external libraries.<|26.76|> <|26.76|> Do not change the font size.<|28.64|> <|startoftranscript|><|en|><|transcribe|><|0.00|> This is how you prevent all those unwanted side effects.<|2.56|> <|2.56|> >> And the fourth one, which I think most people,<|4.48|> <|4.48|> myself included, probably skip, is acceptance checks.<|7.16|> <|7.16|> >> This is that mantra coming back again.<|9.20|> <|9.20|> Verification is the workflow.<|11.14|> <|11.14|> You actually include in your prompt.<|12.74|> <|12.74|> Tell me how to verify that this change works.<|15.52|>

## [11:56 – 12:08]

<|15.52|> >> So you're asking the AI to write its own test plan.<|17.84|> <|17.84|> >> You are.<|18.64|> <|18.64|> After you generate the code,<|20.04|> <|20.04|> list the steps I should take to test this with voiceover.<|23.24|> <|23.24|> It does two things.<|24.24|> <|24.24|> It forces the model to think about the testing criteria,<|27.24|>

## [12:08 – 12:10]

<|27.24|> which often improves the quality of the code it generates<|29.60|>

## [12:10 – 12:14]

<|startoftranscript|><|en|><|transcribe|><|0.00|> in the first place, and it reminds you to actually do the testing.<|3.42|>

## [12:14 – 12:20]

<|3.42|> It's a checklist right there in your chat history.<|5.58|> <|5.58|> That's really smart.<|7.00|> <|7.00|> Let's look at the visual consistency rules again here.<|9.90|>

## [12:20 – 12:23]

<|9.90|> We mentioned the font sizes proportional for prompts,<|12.26|>

## [12:23 – 12:34]

<|12.26|> monospace for code, but the workshop also has something<|15.38|> <|15.38|> called the one request rule.<|17.14|> <|17.14|> Prefer a one request at a time.<|18.98|> <|18.98|> This feels slow.<|20.46|> <|20.46|> My instinct is to just dump a whole paragraph of instructions,<|23.94|>

## [12:34 – 12:41]

<|23.94|> fix the button, change the color, add a test,<|26.82|> <|26.82|> and while you're at it, update the comment.<|28.74|> <|startoftranscript|><|en|><|transcribe|><|0.00|> That's why your agent so often fails.<|2.16|>

## [12:41 – 12:44]

<|2.16|> LLM suffer from what's called attention degradation.<|5.08|>

## [12:44 – 12:52]

<|5.08|> The more complex your request, the more likely they are<|7.32|> <|7.32|> to just forget one of the instructions.<|9.28|> <|9.28|> - It just drops one.<|10.24|> <|10.24|> - It'll just drop one, or it will merge two in a weird way.<|13.28|>

## [12:52 – 12:56]

<|13.28|> The one request rule is about serialization.<|16.52|>

## [12:56 – 13:10]

<|16.52|> Do step A verify, do step B verify.<|19.12|> <|19.12|> - It's like agile for prompting.<|20.40|> <|20.40|> Small, verifiable batches.<|22.04|> <|22.04|> - It is, and it's actually much faster in the long run.<|24.64|> <|24.64|> Because if you ask for five things and it messes up<|26.88|> <|26.88|> one of them, you either have to roll back everything<|29.12|> <|startoftranscript|><|en|><|transcribe|><|0.00|> spend 10 minutes untangling the mess it made.<|2.24|>

## [13:10 – 13:14]

<|2.24|> Right. If you do one thing at a time, you catch any error instantly.<|6.08|>

## [13:14 – 13:18]

<|6.08|> Okay. Let's get into the real meat of the workshop.<|9.36|>

## [13:18 – 13:24]

<|10.16|> Section three. Intelligent accessibility enhancement. This is modules error two,<|15.92|>

## [13:24 – 13:30]

<|15.92|> and they start with a specific, very, very common problem. The repeated delete controls problem.<|21.84|>

## [13:30 – 13:35]

<|21.84|> This is a classic accessibility violation to textbook example. Imagine you have a list of items.<|27.28|>

## [13:36 – 13:43]

<|startoftranscript|><|en|><|transcribe|><|0.00|> the workshop uses plants in a catalog. So you have rows, tulip, orchid. And next to each one<|7.04|>

## [13:43 – 13:48]

<|7.04|> is a button that is just labeled delete. Visually, that's fine. I see the rows. I see the button<|11.76|>

## [13:48 – 13:51]

<|11.76|> right next to it. I know exactly what that button does. Of course. But now close your eyes. Put on<|15.20|>

## [13:51 – 13:56]

<|15.20|> your headphones. Turn on voiceover. What do you hear as you swipe through the screen? Delete button,<|19.84|>

## [13:56 – 14:01]

<|19.84|> delete button, delete button. Yep. Which one am I deleting? You have absolutely no idea. You have<|24.56|>

## [14:01 – 14:06]

<|24.56|> to swipe backwards to hear the plant name. Rose, then swipe forwards to get back to the button.<|29.84|>

## [14:06 – 14:09]

<|startoftranscript|><|en|><|transcribe|><|0.00|> It's exhausting and it's an incredibly error prone.<|2.88|>

## [14:09 – 14:11]

<|2.88|> So how does the workshop fix this using the agent?<|5.44|>

## [14:11 – 14:15]

<|5.44|> They break it down into this really clean, three-step flow.<|8.64|>

## [14:15 – 14:17]

<|8.64|> So step one is contextual labels.<|11.60|>

## [14:17 – 14:24]

<|11.60|> The prompt using our four pillars asks the agent to<|14.64|> <|14.64|> update the accessibility label.<|16.08|> <|16.08|> Okay.<|16.56|> <|16.56|> The scope is the button.<|18.16|>

## [14:24 – 14:28]

<|18.16|> The goal is voiceover should announce delete item name.<|22.24|>

## [14:28 – 14:34]

<|22.24|> So delete rows.<|23.84|> <|23.84|> But the constraint here is key, right?<|26.00|> <|26.00|> Keep the visible UI the same.<|28.16|>

## [14:34 – 14:39]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Crucial, we don't want the button text on the screen to suddenly say delete rows because<|4.74|>

## [14:39 – 14:41]

<|4.74|> that's long and it might break the layout.<|7.08|>

## [14:41 – 14:46]

<|7.08|> We just want the spoken label for screen readers to change.<|10.12|> <|10.12|> And the agent knows how to do this?<|11.36|> <|11.36|> Oh, yeah.<|12.36|>

## [14:46 – 14:50]

<|12.36|> It spits out the Swift UI code using the accessibility label modifier instantly.<|16.44|>

## [14:50 – 14:56]

<|16.44|> But then verification, you read the diff.<|18.48|> <|18.48|> Did it use the right variable?<|20.04|> <|20.04|> Did it use item.name?<|22.28|>

## [14:56 – 14:59]

<|22.28|> Or did it hallucinate and use item.ad?<|25.28|>

## [14:59 – 15:03]

<|25.28|> Delete 5a3a99b.<|27.28|> <|27.28|> Not very helpful.<|28.60|>

## [15:03 – 15:08]

<|startoftranscript|><|en|><|transcribe|><|0.00|> I have seen agents do that. It's like, technically I added a unique label, but it's completely<|4.96|>

## [15:08 – 15:12]

<|4.96|> useless to a human. This is why humans decide. You have to check if the label actually makes<|8.96|>

## [15:12 – 15:17]

<|8.96|> sense.<|9.96|> <|9.96|> Okay, so that's step one. Step two in the module gets a little trickier. They call it<|12.96|> <|12.96|> icon-only buttons.<|14.76|>

## [15:17 – 15:23]

<|14.76|> This is where developers, even without AI, often break things. You decide, delete takes<|20.52|>

## [15:23 – 15:29]

<|20.52|> up too much space, so you want to swap it for a nice, clean, trashcan icon. Image, system<|26.00|>

## [15:29 – 15:34]

<|26.00|> name.<|27.00|> <|27.00|> Looks better for you.<|28.00|> <|startoftranscript|><|en|><|transcribe|><|0.00|> But if you aren't careful, what does voice over read now?<|3.00|>

## [15:34 – 15:37]

<|3.00|> Trash, image, or maybe just button.<|6.50|>

## [15:37 – 15:41]

<|6.50|> Exactly. The semantic meaning of "delete" is completely gone.<|10.50|>

## [15:41 – 15:45]

<|10.50|> So the prompt here has to instruct the agent to make the switch,<|14.00|>

## [15:45 – 15:49]

<|14.00|> but it has to explicitly safeguard that label we just fixed.<|18.00|>

## [15:49 – 15:53]

<|18.00|> The prompt says something like, "Replace the text with a trash icon,<|22.00|>

## [15:53 – 15:56]

<|22.00|> but ensure the accessibility label remains specific to the item."<|25.50|>

## [15:56 – 16:05]

<|startoftranscript|><|en|><|transcribe|><|0.00|> and this is the really important nuance,<|2.14|> <|2.14|> mark the image itself as decorative.<|4.64|> <|4.64|> Why mark the image as decorative?<|6.14|> <|6.14|> Because otherwise, voiceover might try to read both.<|8.64|>

## [16:05 – 16:19]

<|8.64|> It might say, delete rows, trash image.<|11.18|> <|11.18|> Which is redundant.<|12.28|> <|12.28|> It's just noise.<|13.28|> <|13.28|> You want the button to be the interactive element<|15.28|> <|15.28|> and the image inside it to be just visual paint.<|17.78|> <|17.78|> The agent knows how to do this.<|19.68|> <|19.68|> It adds accessibility hidden true to the image,<|22.68|>

## [16:19 – 16:24]

<|22.68|> but only if you remember to ask it to.<|24.72|> <|24.72|> Okay, so we have a good label, a nice icon.<|27.52|>

## [16:24 – 16:32]

<|27.52|> Step three is the safety net.<|29.76|> <|startoftranscript|><|en|><|transcribe|><|0.00|> The confirmation alert.<|1.84|> <|1.84|> Right.<|2.84|> <|2.84|> Even if you know you're deleting the rows, you don't want to do it by accident.<|6.08|>

## [16:32 – 16:35]

<|6.08|> So the prompt asks the agent to add a confirmation alert.<|9.58|>

## [16:35 – 16:38]

<|9.58|> But the verification check for this step is fascinating.<|12.34|>

## [16:38 – 16:42]

<|12.34|> It's not just, doesn't alert appear.<|14.76|> <|14.76|> What is it?<|15.76|>

## [16:42 – 16:46]

<|15.76|> It asks the developer to verify that the focus lands in a sensible place.<|20.60|>

## [16:46 – 16:50]

<|20.60|> What does that mean?<|21.60|> <|21.60|> Focus lands.<|22.60|> <|22.60|> The voiceover cursor.<|24.60|>

## [16:50 – 16:58]

<|24.60|> When you interact with that alert, let's say you hit cancel, where does the voiceover<|28.40|> <|28.40|> cursor go?<|29.40|> <|startoftranscript|><|en|><|transcribe|><|0.00|> go back to the delete button you just activated.<|2.40|>

## [16:58 – 17:00]

<|2.40|> Or does it jump to the very top of the screen?<|5.00|>

## [17:00 – 17:03]

<|5.00|> Or even worse, does it just disappear into the void?<|7.84|>

## [17:03 – 17:05]

<|7.84|> I have never once thought about that.<|10.00|>

## [17:05 – 17:14]

<|10.00|> If it jumps to the top, I have to swipe all the way down the list again to find my place.<|13.76|> <|13.76|> Exactly.<|14.76|> <|14.76|> That's called a focus trap or a focus reset.<|16.84|> <|16.84|> And it's a terrible user experience.<|19.08|>

## [17:14 – 17:19]

<|19.08|> The workshop guides you to ask the agent to help you verify that focus behavior.<|23.32|>

## [17:19 – 17:23]

<|23.32|> It's moving beyond does the code compile to does the experience actually flow?<|28.20|>

## [17:23 – 17:27]

<|startoftranscript|><|en|><|transcribe|><|0.00|> It really seems like the recurring theme here is that the agent knows this syntax, it<|3.36|>

## [17:27 – 17:34]

<|3.36|> knows how to write dot alert or dot focus, but the human has to provide the intent and<|10.96|>

## [17:34 – 17:51]

<|10.96|> all the quality control.<|12.64|> <|12.64|> Precisely.<|13.64|> <|13.64|> You are the architect, the agent is the brick layer, it'll lay the bricks wherever you<|17.52|> <|17.52|> tell it to.<|18.52|> <|18.52|> Okay.<|19.52|> <|19.52|> Moving on to section four.<|21.04|> <|21.04|> Context files and targeted review.<|23.00|> <|23.00|> This is module 03.<|24.44|> <|24.44|> This is where we get into something they call in context learning.<|27.52|>

## [17:51 – 18:01]

<|startoftranscript|><|en|><|transcribe|><|0.00|> We talked about scope guarding, which is about keeping things out.<|3.28|> <|3.28|> This is about bringing things in.<|4.72|> <|4.72|> Right.<|5.72|> <|5.72|> Sometimes the agent needs to know your specific rules.<|8.04|> <|8.04|> Maybe your company has a style guide.<|10.20|>

## [18:01 – 18:06]

<|10.20|> Maybe you have a rule that all interactive buttons must be at least 44 points high for<|14.80|>

## [18:06 – 18:24]

<|14.80|> touch targets.<|16.16|> <|16.16|> The agent wouldn't know that from its training data.<|18.28|> <|18.28|> Of course not.<|19.28|> <|19.28|> It's specific to your project, so you can upload a file to give it that context.<|22.96|> <|22.96|> How does that work?<|23.96|> <|23.96|> You create a simple markdown file.<|25.96|> <|25.96|> Let's call it accessibility rules.md.<|28.16|> <|startoftranscript|><|en|><|transcribe|><|0.00|> you just upload it to the chat context for your session.<|2.32|> <|2.32|> It acts like a temporary brain implant for the AI.<|4.96|>

## [18:24 – 18:47]

<|4.96|> >> For this conversation, you must follow these rules.<|7.84|> <|7.84|> >> Exactly that.<|8.96|> <|8.96|> But of course, there's a big safety warning here too.<|10.92|> <|10.92|> The guide is very clear.<|12.52|> <|12.52|> Do not upload internal rule books.<|15.12|> <|15.12|> >> Right, don't upload your company's<|16.60|> <|16.60|> proprietary SecretSource Architecture Guide<|19.48|> <|19.48|> if you're using a public cloud model.<|21.24|> <|21.24|> >> Yeah, that would be a bad day.<|23.44|> <|23.44|> >> The workshop provides sanitized templates<|25.36|> <|25.36|> in the workshop pass it's templates folder.<|27.80|>

## [18:47 – 18:52]

<|startoftranscript|><|en|><|transcribe|><|0.00|> It teaches you how to create a project context file that is specific but not sensitive.<|4.56|>

## [18:52 – 18:56]

<|4.56|> Now, here is the strategy that I thought was absolutely brilliant.<|9.00|>

## [18:56 – 19:01]

<|9.00|> They don't ask the agent to just go and fix the code immediately using these new rules.<|14.36|>

## [19:01 – 19:07]

<|14.36|> Well, that would be chaos.<|15.44|> <|15.44|> They ask it to generate 2Ds.<|17.60|> <|17.60|> This is such a clever workflow hack.<|19.96|>

## [19:07 – 19:12]

<|19.96|> If you give the agent a file and say, fix all accessibility issues based on these rules,<|24.76|>

## [19:12 – 19:25]

<|24.76|> it's going to try to do everything at once.<|26.24|> <|26.24|> It will hallucinate.<|27.24|> <|startoftranscript|><|en|><|transcribe|><|0.00|> will probably over-engineer solutions<|1.76|> <|1.76|> and the final diff will be massive and unreviewable.<|4.88|> <|4.88|> - And you'll likely just hit Gibber Store<|6.20|> <|6.20|> because it breaks something subtle.<|7.36|> <|7.36|> - Exactly.<|8.20|> <|8.20|> So instead, the prompt in the jade is very specific.<|10.64|>

## [19:25 – 19:30]

<|10.64|> It says, "Insert inline TitoDoo comments in the code.<|14.00|> <|14.00|> Format them like this.<|15.60|>

## [19:30 – 19:35]

<|15.60|> T-O-D-O, accessibility high, rule, rule ID."<|20.60|>

## [19:35 – 19:39]

<|20.88|> - So it's not changing the code.<|22.12|> <|22.12|> It's just scanning it and tagging the problems.<|24.80|>

## [19:39 – 19:42]

<|24.80|> - It creates a backlog for you directly in your source files.<|28.12|>

## [19:42 – 19:46]

<|startoftranscript|><|en|><|transcribe|><|0.00|> 2DDO, this image is missing a label.<|3.28|>

## [19:46 – 20:02]

<|3.28|> 2D, this touch target might be too small.<|5.88|> <|5.88|> And then the human can triage that list.<|7.96|> <|7.96|> You, the human, look at the list.<|9.32|> <|9.32|> You say, OK, that 2DO is valid.<|11.28|> <|11.28|> That one is a false positive, I'll ignore it.<|13.88|> <|13.88|> You are in control.<|15.28|> <|15.28|> You prioritize the work.<|16.92|> <|16.92|> And then you can ask the agent to fix them one by one.<|19.96|>

## [20:02 – 20:05]

<|19.96|> The guide shows a great example of a targeted fix<|23.12|>

## [20:05 – 20:08]

<|23.12|> based on one of these generated 2DOs.<|25.80|>

## [20:08 – 20:10]

<|25.80|> It's about replacing a free form text field<|28.12|>

## [20:10 – 20:14]

<|startoftranscript|><|en|><|transcribe|><|0.00|> for a propagation date with a semantic date picker.<|3.32|>

## [20:14 – 20:19]

<|3.32|> This is the perfect example of the difference<|5.16|> <|5.16|> between patching and fixing.<|6.84|> <|6.84|> Patching would be just adding a label to the text field<|9.04|>

## [20:19 – 20:23]

<|9.04|> that says, please enter date as YYMMDD.<|12.08|>

## [20:23 – 20:30]

<|12.08|> Which users will still miss up they'll write Jan first<|14.40|> <|14.40|> or whatever.<|15.16|> <|15.16|> And it's not accessible.<|16.60|> <|16.60|> Fixing is changing the component itself.<|19.16|>

## [20:30 – 20:32]

<|19.16|> A proper date picker handles all the formatting,<|22.00|>

## [20:32 – 20:36]

<|22.00|> the validation, and the accessibility for you automatically.<|25.76|>

## [20:36 – 20:40]

<|25.76|> The lesson here is that the agent is very, very good<|29.60|>

## [20:40 – 20:42]

<|startoftranscript|><|en|><|transcribe|><|0.00|> at these kinds of component refactors.<|2.32|>

## [20:42 – 20:46]

<|2.32|> It knows the SwiftUI API for date picker perfectly.<|6.04|>

## [20:46 – 20:53]

<|6.04|> So once you identify the TODO,<|8.08|> <|8.08|> the fix itself is trivial.<|9.68|> <|9.68|> - This level up, section five, designed to code.<|12.48|>

## [20:53 – 20:56]

<|12.48|> This is module over, or this is the first draft workflow.<|16.12|>

## [20:56 – 21:13]

<|16.12|> You start with just a wireframe, a picture,<|18.40|> <|18.40|> and you want code.<|19.28|> <|19.28|> - This is the demo everyone loves to show.<|21.20|> <|21.20|> Look, I drew a sketch on a napkin,<|22.80|> <|22.80|> and now I have a working app.<|24.00|> <|24.00|> - It's the magic trick.<|25.08|> <|25.08|> - It is, but the workshop warns<|27.28|> <|27.28|> that this is probably the most dangerous workflow<|29.60|> <|startoftranscript|><|en|><|transcribe|><|0.00|> for accessibility.<|1.00|> <|1.00|> Why? I mean, if it looks exactly like the sketch, isn't that a win?<|3.84|>

## [21:13 – 21:19]

<|3.84|> The AI sees pixels, doesn't see semantics, it sees bold text, so it generates bold text.<|9.40|>

## [21:19 – 21:24]

<|9.40|> It has no idea that that bold text is supposed to be a heading that a screen reader user needs<|14.40|>

## [21:24 – 21:25]

<|14.40|> for navigation.<|15.40|>

## [21:25 – 21:30]

<|15.40|> So you get the SwiftUI equivalent of what Web developers call divsoup, just a bunch of<|20.12|>

## [21:30 – 21:37]

<|20.12|> generic views of styling, but no actual structure.<|22.88|> <|22.88|> That is the perfect analogy.<|24.40|> <|24.40|> And the example they use in the workshop is a ratings view.<|27.72|>

## [21:37 – 21:43]

<|startoftranscript|><|en|><|transcribe|><|0.00|> a standard product review screen. You have a title, maybe an image of the product, and a five-star rating.<|5.60|>

## [21:43 – 21:48]

<|5.60|> Standard stuff, see it everywhere. If you just give that image to an agent nine times out ten,<|10.56|>

## [21:48 – 21:54]

<|10.56|> what it will generate is five separate star buttons. Star one, star two, star three. Visually,<|16.24|>

## [21:54 – 21:58]

<|16.24|> that works. I can tap the fourth star to give it four stars. Right, but for a blind user,<|20.96|>

## [21:58 – 22:04]

<|20.96|> it's a nightmare. They have to swipe through star filled button, swipe star filled button,<|26.88|>

## [22:04 – 22:08]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Swipe, Start, Field, Button, Swipe, Star, Empty, Button.<|3.60|>

## [22:08 – 22:18]

<|3.60|> They have to do five swipes just to figure out the rating is three out of five.<|6.76|> <|6.76|> Wow, okay.<|7.76|> <|7.76|> That is incredibly tedious.<|9.00|> <|9.00|> It's awful.<|10.00|> <|10.00|> What you actually want semantically is a single adjustable control.<|13.60|>

## [22:18 – 22:21]

<|13.60|> It should announce itself as rating three out of five, adjustable.<|17.00|>

## [22:21 – 22:35]

<|17.00|> And the user can just swipe up or down to change the value from three to four or four<|20.60|> <|20.60|> to five.<|21.60|> <|21.60|> But the wireframe doesn't show that behavior.<|23.60|> <|23.60|> It just shows five static stars.<|26.04|> <|26.04|> Exactly.<|27.04|> <|startoftranscript|><|en|><|transcribe|><|0.00|> The wireframe is static, the interaction is dynamic,<|3.28|>

## [22:35 – 22:37]

<|3.28|> the human has to be the one to decide the interaction model.<|6.00|>

## [22:37 – 22:40]

<|6.00|> So the prompt in the library is very, very specific.<|8.32|>

## [22:40 – 22:43]

<|8.32|> It says, "The five star rating must be exposed<|11.52|>

## [22:43 – 22:45]

<|11.52|> as a single adjustable control."<|14.20|>

## [22:45 – 22:49]

<|14.20|> You have to explicitly tell the agent the semantic intent.<|17.80|>

## [22:49 – 22:54]

<|17.80|> You can't let it guess from the pixels.<|19.80|> <|19.80|> If you let it guess, you will get the pixel perfect,<|22.56|>

## [22:54 – 22:57]

<|22.56|> but semantically garbage result almost every time.<|25.56|>

## [22:57 – 23:00]

<|25.56|> Then there's this great dynamic type micro exercise.<|28.64|>

## [23:00 – 23:05]

<|startoftranscript|><|en|><|transcribe|><|0.00|> The guide calls fixed with layouts, the blind spot of AI code generation.<|5.52|>

## [23:05 – 23:09]

<|5.52|> Imagine your apps layout is a picture painted on the side of balloon.<|9.44|>

## [23:09 – 23:13]

<|9.44|> If you blow up the balloon, which is like increasing the font size, that the picture<|12.64|>

## [23:13 – 23:17]

<|12.64|> just stretches with it, that's good.<|14.44|> <|14.44|> That's a flexible layout.<|15.64|> <|15.64|> Okay, I would be.<|16.64|>

## [23:17 – 23:21]

<|16.64|> But now imagine you put a rigid metal frame around that picture, a fixed width, a fixed<|21.32|>

## [23:21 – 23:25]

<|21.32|> height, and then you try to blow up the balloon.<|23.92|> <|23.92|> What happens?<|24.92|>

## [23:25 – 23:29]

<|24.92|> The balloon pops or the picture gets squashed and clipped against the frame.<|28.92|>

## [23:29 – 23:37]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Exactly. AI loves to build with fixed frames. It loves to say frame with 200 height 50, because<|8.64|>

## [23:37 – 23:42]

<|8.64|> that matches the wireframe pixel for pixel. But if a user with low vision bumps their<|13.48|>

## [23:42 – 23:48]

<|13.48|> text size up to 200%, the text submit application becomes huge. It won't fit in 50 pixels of<|19.08|>

## [23:48 – 23:51]

<|19.08|> height. It gets clipped. You just see sub-app.<|21.88|>

## [23:51 – 23:55]

<|21.88|> Right. Which is unusable. So the workshop has a specific prompt to fix this.<|25.60|> <|startoftranscript|><|en|><|transcribe|><|0.00|> It does.<|1.00|>

## [23:55 – 24:00]

<|1.00|> After the agent generates the initial layout, you follow up with "Make this view usable<|5.68|>

## [24:00 – 24:04]

<|5.68|> at large dynamic type sizes without changing the core design intent."<|9.44|>

## [24:04 – 24:06]

<|9.44|> "And what is the agent doing response to that?"<|11.44|>

## [24:06 – 24:10]

<|11.44|> It goes back and it switches from those rigid frames to flexible stacks.<|15.24|>

## [24:10 – 24:13]

<|15.24|> It'll remove a frame height and 50 and replace it with frame height 50.<|18.56|>

## [24:13 – 24:18]

<|18.56|> It might change a horizontal age stack to a layout that can wrap onto a second line<|22.00|> <|22.00|> if the text gets too long.<|23.28|>

## [24:18 – 24:22]

<|23.28|> "So it knows a technical solution, but it waits for you to give a permission to use it."<|27.16|>

## [24:22 – 24:25]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Using flexible layouts might make the design look slightly different than the wireframe<|3.36|>

## [24:25 – 24:27]

<|3.36|> at the default text size.<|5.24|>

## [24:27 – 24:32]

<|5.24|> The AI, by default, prioritizes matching the image until you tell it to prioritize accessibility<|10.76|>

## [24:32 – 24:34]

<|10.76|> and usability.<|12.08|>

## [24:34 – 24:39]

<|12.08|> Humans decide, you the developer, have to decide that usability is more important than pixel<|16.92|>

## [24:39 – 24:41]

<|16.92|> perfection.<|17.92|> <|17.92|> And then you verify it.<|19.00|>

## [24:41 – 24:46]

<|19.00|> The checkpoint for this entire module is clunk up the font size in your simulator or<|24.20|>

## [24:46 – 24:50]

<|24.20|> on your device.<|25.80|> <|25.80|> Does the layout break?<|27.20|> <|27.20|> Yes or no?<|28.20|>

## [24:50 – 24:55]

<|startoftranscript|><|en|><|transcribe|><|0.00|> Okay, moving to our last big section, section 6, managing workflow and regressions.<|5.12|>

## [24:55 – 25:01]

<|5.12|> This is module 05.<|6.80|> <|6.80|> We've generated code, we've fixed some bugs.<|9.52|> <|9.52|> Now how do we ship this stuff safely?<|11.44|>

## [25:01 – 25:05]

<|11.44|> This is where we move out of workshop mode and into production mode.<|15.24|>

## [25:05 – 25:08]

<|15.24|> The goal here is to define what "done" actually means.<|18.52|>

## [25:08 – 25:12]

<|18.52|> A fix isn't done just because the code is in the main branch.<|22.04|>

## [25:12 – 25:16]

<|22.04|> It's done when it has a verification step and crucially a regression check.<|26.04|>

## [25:16 – 25:17]

<|26.04|> Right.<|27.04|>

## [25:17 – 25:22]

<|startoftranscript|><|en|><|transcribe|><|0.00|> and sure is that the bug we just fixed doesn't mysteriously reappear next week when someone else touches that code.<|5.50|>

## [25:22 – 25:30]

<|5.50|> And the workshop suggests using the agent to help write these tests.<|8.50|> <|8.50|> It does.<|9.50|> <|9.50|> This sounds like a dream come true.<|10.50|> <|10.50|> I hate writing tests.<|12.00|> <|12.00|> Everybody hates writing tests.<|13.50|>

## [25:30 – 25:35]

<|13.50|> But the agent is great at writing boilerplate code and tests are mostly boilerplate.<|18.00|>

## [25:35 – 25:39]

<|18.00|> The workshop proposes three layers of testing, unit tests for business logic,<|22.50|>

## [25:39 – 25:45]

<|22.50|> UI tests for common user flows, and specific accessibility regression tests.<|28.00|>

## [25:45 – 25:48]

<|startoftranscript|><|en|><|transcribe|><|0.00|> What does an accessibility regression test look like in code?<|3.44|>

## [25:48 – 25:54]

<|3.44|> It uses X-Codes built-in UI testing framework to make assertions about accessibility properties.<|8.96|>

## [25:54 – 25:57]

<|8.96|> So, for our delete button example, the test might look like.<|12.36|>

## [25:57 – 25:59]

<|12.36|> XCTS are equal.<|14.00|>

## [25:59 – 26:02]

<|14.00|> App.buttons, deletebuttonrows.label, delete rows.<|17.60|>

## [26:02 – 26:11]

<|17.60|> It programmatically checks that the label is what we expect it to be.<|20.60|> <|20.60|> That seems powerful.<|22.00|> <|22.00|> But there's a big warning in the guide here.<|24.40|> <|24.40|> The agent guesses identifiers.<|26.40|>

## [26:11 – 26:15]

<|26.40|> This is the hallucinated identifier problem, and it's a huge gacha.<|29.80|>

## [26:15 – 26:19]

<|startoftranscript|><|en|><|transcribe|><|0.00|> The agent is writing the test code in a vacuum. It doesn't have your app actually running.<|4.14|>

## [26:19 – 26:23]

<|4.14|> So it has to guess the accessibility identifiers. It writes app.buttonsSubmit.<|8.64|>

## [26:23 – 26:26]

<|8.64|> But in my code, I named that button "SendButtons".<|11.60|>

## [26:26 – 26:30]

<|11.60|> So the test fails immediately. Not because your app logic is wrong, but because the test<|15.36|>

## [26:30 – 26:32]

<|15.36|> I benifired is wrong, the agent was just guessing.<|17.68|>

## [26:32 – 26:37]

<|17.68|> So the human has to go in and validate and likely correct the test code itself.<|22.72|>

## [26:37 – 26:43]

<|22.72|> Exactly. Or the guide suggests a clever prompt to begin with. Something like,<|28.16|>

## [26:43 – 26:50]

<|startoftranscript|><|en|><|transcribe|><|0.00|> If you must guess that application identifiers stop and ask me or even better use a placeholder like inserted here<|7.50|>

## [26:50 – 26:52]

<|7.50|> wherever you would need to guess.<|9.50|>

## [26:52 – 26:56]

<|9.50|> Treat the unknown as unknown. Don't just make something up.<|13.00|>

## [26:56 – 27:00]

<|13.00|> Don't guess. And even if you don't want to write fully automated test code,<|17.00|>

## [27:00 – 27:05]

<|17.00|> the agent can still be incredibly helpful by generating a manual regression checklist.<|22.50|>

## [27:05 – 27:06]

<|22.50|> Oh, just a text file.<|23.50|>

## [27:06 – 27:11]

<|23.50|> Just a markdown checklist. One, turn on voiceover. Two, navigate to a row in the list.<|28.50|>

## [27:11 – 27:15]

<|startoftranscript|><|en|><|transcribe|><|0.00|> 3. Swipe right to focus the delete button.<|3.60|>

## [27:15 – 27:19]

<|3.60|> 4. Confirm that voiceover announces "Delete Item Name".<|7.48|>

## [27:19 – 27:25]

<|7.48|> You know just having that checklist makes it ten times more likely that I'll actually<|10.68|> <|10.68|> do the test.<|11.68|> <|11.68|> That's the whole point.<|12.68|> <|12.68|> It reduces the friction of verification.<|14.18|>

## [27:25 – 27:30]

<|14.18|> Okay, section 7 is troubleshooting and what good looks like.<|18.56|>

## [27:30 – 27:38]

<|18.56|> We've talked a bit about scope creep already, but the guide points out another common failure<|22.40|> <|22.40|> mode.<|23.40|> <|23.40|> They call it technically correct but unusable.<|26.24|>

## [27:38 – 27:41]

<|startoftranscript|><|en|><|transcribe|><|0.00|> We joked about the delete optional item label earlier.<|3.78|>

## [27:41 – 27:43]

<|3.78|> That's a perfect example.<|5.14|>

## [27:43 – 27:47]

<|5.14|> But another really common one is with accessibility hints.<|8.98|>

## [27:47 – 27:55]

<|8.98|> Hints are those little extra descriptions that voiceover reads out right after the label.<|12.82|> <|12.82|> Yes, exactly.<|13.82|> <|13.82|> They're supposed to clarify what happens when you activate a control.<|17.22|>

## [27:55 – 27:59]

<|17.22|> But the agent often adds hints that are just redundant.<|21.12|>

## [27:59 – 28:03]

<|21.12|> It will see a button labeled submit and it will add a hint that says "submit's the form."<|25.82|>

## [28:03 – 28:09]

<|25.82|> Well duh.<|26.82|> <|26.82|> It adds zero value and just creates noise.<|29.50|> <|startoftranscript|><|en|><|transcribe|><|0.00|> A blind user's listening to all this,<|1.64|>

## [28:09 – 28:19]

<|1.64|> often at two or three X speed, submit button,<|5.20|> <|5.20|> submits the form.<|6.48|> <|6.48|> It's just annoying.<|7.84|> <|7.84|> - So what's a good hint in that case?<|9.28|> <|9.28|> - A good hint explains the consequence of the action.<|11.88|>

## [28:19 – 28:57]

<|11.88|> So label, submit, hint.<|14.64|> <|14.64|> Sends your application to the server,<|16.32|> <|16.32|> this action cannot be undone.<|18.12|> <|18.12|> - Oh, okay, that's actually useful information.<|20.08|> <|20.08|> - It's useful, the AI really struggles with useful.<|22.44|> <|22.44|> It's very good at accurate,<|24.04|> <|24.04|> but useful requires a degree of empathy<|26.84|> <|26.84|> that requires understanding<|28.04|> <|startoftranscript|><|en|><|transcribe|><|0.00|> the user's potential anxiety in that moment.<|1.92|> <|1.92|> - So again, the human has to review and edit the hints<|4.84|> <|4.84|> to add that human touch.<|6.32|> <|6.32|> - Always, every single time.<|8.68|> <|8.68|> - We're at the outstri now.<|10.08|> <|10.08|> The guide wraps up with a review of the toolkit.<|12.12|> <|12.12|> - Yeah, this is all the assets we mentioned.<|14.12|> <|14.12|> The dot jitter nor templates, the sanitize context files,<|16.92|> <|16.92|> placeholders for diagrams.<|18.64|> <|18.64|> The emphasis is really on not reinventing the wheel,<|21.64|>

## [28:57 – 28:59]

<|21.64|> use safe defaults that are provided for you.<|24.12|>

## [28:59 – 29:03]

<|24.12|> - And finally, the guide poses this really provocative thought<|27.44|>

## [29:03 – 29:06]

<|startoftranscript|><|en|><|transcribe|><|0.00|> for the participants as they leave, it asks,<|3.08|>

## [29:06 – 29:08]

<|3.08|> if AI accelerates the coding,<|5.68|>

## [29:08 – 29:15]

<|5.68|> does the developer's primary skill become verification?<|9.28|> <|9.28|> - I've been thinking about this a lot<|10.48|> <|10.48|> since reading these materials.<|12.00|>

## [29:15 – 29:19]

<|12.00|> If I can generate a complex SwiftUI view in 30 seconds,<|16.40|>

## [29:19 – 29:53]

<|16.40|> my value as a senior developer<|18.04|> <|18.04|> isn't that I know the syntax for VStack or Dosh sheet.<|21.28|> <|21.28|> - Right.<|22.12|> <|22.12|> - My value is that I know if it's good.<|23.84|> <|23.84|> - It's taste, it's judgment.<|25.56|> <|25.56|> - It's safety, it's knowing that this code handles<|28.12|> <|28.12|> the edge cases, it's knowing it works<|29.80|> <|startoftranscript|><|en|><|transcribe|><|0.00|> for the blind user, for the user with huge text,<|2.40|> <|2.40|> for the user on a slow network.<|4.04|> <|4.04|> The agent doesn't care about any of that<|5.68|> <|5.68|> unless you specifically tell it to.<|7.56|> <|7.56|> - So in a weird way, AI might force us<|9.80|> <|9.80|> to become more human-centric,<|11.44|> <|11.44|> because we're not so bogged down<|12.76|> <|12.76|> in the mechanics of the syntax anymore.<|14.72|> <|14.72|> - That is the optimistic view,<|16.32|> <|16.32|> and I think it's the right one.<|17.68|> <|17.68|> If you spend less time fighting with braces and semi-quallons,<|21.08|>

## [29:53 – 30:01]

<|21.08|> you have more cognitive cycles available<|23.28|> <|23.28|> to verify the actual human experience.<|25.40|> <|25.40|> You have more time to close your eyes<|28.00|> <|28.00|> and just listen to your app.<|28.96|>

## [30:01 – 30:06]

<|startoftranscript|><|en|><|transcribe|><|0.00|> AI accelerates, humans decide, verification is the workflow.<|4.60|>

## [30:06 – 30:14]

<|4.60|> Verification is the job.<|6.36|> <|6.36|> I think that's the perfect place to leave it.<|8.88|> <|8.88|> This was a deep dive into the<|10.68|> <|10.68|> "Agentic Coding and X Code Workshop,"<|12.96|>

## [30:14 – 30:18]

<|12.96|> a true masterclass in discipline, safe AI usage.<|16.32|>

## [30:18 – 30:26]

<|16.32|> It's a masterclass in staying in control of the machine.<|18.80|> <|18.80|> Thanks for diving in with us.<|20.72|> <|20.72|> Check your ignore, scope your prompts,<|22.52|> <|22.52|> and we'll see you on the next deep dive.<|24.28|>

-----

Transcribed on 14 March 2026 at 20:18 · 334 segments