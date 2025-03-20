# Language Learning System

An AI-powered adaptive language learning system integrating Reinforcement Learning, Transformer architectures, and Retrieval Augmented Generation (RAG) for personalized language education.

This project is the result of a Master's Thesis developed at VIU (Universidad Internacional de Valencia) for the Master's Degree in Artificial Intelligence.

Read the paper: 

- [Spanish (Official publication)](https://github.com/EmaSuriano/language-learning-paper/blob/main/memoria.pdf?raw=true)
- [English](https://github.com/EmaSuriano/language-learning-paper/blob/english/memoria.pdf?raw=true)

## 📋 Overview

This system represents a novel approach to language learning that adapts dynamically to each learner's needs and progress. By combining advanced AI techniques like Reinforcement Learning with state-of-the-art language models, the system creates a highly personalized and effective learning experience.

### Key Features

- **Adaptive Learning Paths**: PPO algorithm dynamically adjusts learning content based on student performance
- **Interactive Conversations**: Natural dialogues powered by Large Language Models
- **Voice Processing**: Integrated TTS/STT for pronunciation practice and oral comprehension
- **Contextual Feedback**: Provides specific, relevant feedback using RAG technology
- **Progress Tracking**: Comprehensive analytics to monitor learning advancement

## 🎓 Academic Context

This project was developed as part of a Master's Thesis in the Artificial Intelligence program at VIU (Universidad Internacional de Valencia). The research focused on applying advanced AI techniques to solve real-world educational challenges, specifically in language learning.

The thesis explored how reinforcement learning algorithms could be used to create more effective and personalized learning paths, and how large language models could enhance interactive language practice through realistic conversations.

## 🏗️ Architecture

The project follows a client-server architecture with clearly separated frontend and backend components:

### Frontend (Client)

- Built with Next.js 14, TypeScript, and Tailwind CSS
- Responsive UI optimized for both desktop and mobile experiences
- Internationalization support for 8 languages
- Advanced chat interface based on AssistantUI framework

Link to the Github repository --> [language-learning-client](https://github.com/EmaSuriano/language-learning-client)

### Backend (Server)

- Developed with FastAPI and Python 3.13
- Multi-agent system orchestrated with LangChain
- PPO implementation using Stable-Baselines3
- Voice processing with Faster-Whisper and Kokoro-TTS
- RAG system for contextual knowledge retrieval
- Integration with Phi-4 LLM for natural language generation

Link to the Github repository --> [language-learning-server](https://github.com/EmaSuriano/language-learning-server)

## 📊 Features and Capabilities

### Adaptive Learning Engine

The system's core is a PPO (Proximal Policy Optimization) algorithm that:

- Analyzes student performance across multiple dimensions (grammar, vocabulary, fluency)
- Adapts content difficulty in real-time based on performance
- Optimizes learning paths for maximum efficiency and engagement
- Achieves >95% accuracy in level adjustment decisions

### Interactive Conversation System

- Context-aware dialogues that adapt to student level
- Role-play scenarios for practical language application
- Real-time error correction with contextual explanations
- Multimodal interaction through text and voice

### Voice Processing

- Speech recognition optimized for language learners
- Natural text-to-speech with Kokoro-TTS
- Pronunciation feedback and assessment
- Support for 8 languages with varying accents

### Progress Tracking and Analytics

- Comprehensive visualization of learning progress
- Detailed performance metrics across language dimensions
- Historical trend analysis
- Personalized recommendations based on performance data

## 📚 References

For a complete list of references and technical details, please refer to the full thesis document.
