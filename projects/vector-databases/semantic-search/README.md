# Semantic Search with Pinecone Vector Database

**Domain**: Vector Databases & Embeddings

## Overview

Implements semantic search using Sentence Transformers for text embeddings and Pinecone vector database for efficient similarity search. Includes weighted query strategies for relevance tuning.

## Projects

### Project 1: Basic Semantic Search
- Creates embeddings with Sentence Transformers (`all-MiniLM-L6-v2`)
- Upserts vectors to Pinecone index
- Performs semantic search queries

### Project 2: Weighted Semantic Search
- Query embedding weighting strategies
- L2 normalization for improved similarity
- Weight comparison analysis

## Methodology

1. Text embedding generation (Sentence Transformers)
2. Vector index creation and upsert (Pinecone)
3. Semantic search with cosine similarity
4. Weighted query optimization

## Key Files

- `basic-semantic-search/4.11_Courses_Sections_Assignment.ipynb` -- Basic vector search
- `weighted-semantic-search/4.14_Weighted_Search_Assignment.ipynb` -- Weighted search
- `data/courses_with_sections.csv` -- Course data

## Setup

```bash
pip install sentence-transformers pinecone-client python-dotenv
cp .env.example .env  # Add your PINECONE_API_KEY
```
