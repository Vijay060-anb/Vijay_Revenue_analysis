# Revenue Analysis & AI-Powered Reporting Workflow

## Overview

This project combines **Microsoft SQL, n8n workflow automation, and Ollama Llama 3.2** to analyze sales and revenue data and generate an AI-assisted business analysis.

The workflow retrieves aggregated revenue information from a Microsoft SQL database, processes the results through an automated n8n workflow, and sends the SQL output to an Ollama language model for generating a structured analysis.

## Project Objectives

- Analyze sales and revenue data using SQL
- Identify revenue patterns across customer segments and states
- Calculate total revenue, total orders, and average revenue
- Automate the data-analysis workflow using n8n
- Use a local LLM to interpret SQL results and generate business insights

## Technology Stack

- Microsoft SQL Server** — Data storage and SQL analysis
- SQL — Data aggregation and business analysis
- n8n — Workflow automation and orchestration
- Ollama — Local LLM integration
- Llama 3.2 — AI model used for analysis
- GitHub** — Project version control and documentation

## Workflow Architecture

The workflow follows this general process:

```text
Sales Data
    |
    v
Microsoft SQL Server
    |
    v
SQL Revenue Analysis
    |
    v
n8n Workflow
    |
    v
SQL Results
    |
    v
Ollama / Llama 3.2
    |
    v
AI-Generated Business Analysis
