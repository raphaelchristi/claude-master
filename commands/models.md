# Models Configuration

Manage and optimize AI model configuration for TaskMaster operations.

## Instructions

1. **Check Current Configuration**:
   - Use `mcp__taskmaster-ai__models` to get current model status
   - Display model assignments, API key status, and performance metrics
   - Identify any configuration issues or optimization opportunities

2. **Model Health Assessment**:
   - Test connectivity for each configured model
   - Check API key validity and rate limits
   - Assess model performance and cost efficiency
   - Identify any fallback scenarios needed

3. **Configuration Optimization**:
   - Recommend model changes based on usage patterns
   - Suggest cost optimization opportunities
   - Provide guidance on model selection for different tasks
   - Help with troubleshooting configuration issues

4. **Interactive Model Setup**:
   - Guide users through model configuration if needed
   - Help select optimal models for their use case
   - Assist with API key setup and validation
   - Provide model comparison and recommendations

## Current Configuration Display

```
⚙️ **TaskMaster Model Configuration**

🤖 **Active Models**:

**Main Model** (Task Generation & Updates)
- Provider: OpenAI
- Model: o4-mini
- Status: ✅ Connected
- API Key: ✅ Valid (MCP config)
- Cost: $1.10 input / $4.40 output (per 1M tokens)
- SWE Score: 0.45 (Good for general tasks)
- Usage: Primary task operations, general AI tasks

**Research Model** (Enhanced Analysis)
- Provider: OpenAI  
- Model: gpt-4o-mini-search-preview
- Status: ✅ Connected
- API Key: ✅ Valid (MCP config)
- Cost: $0.15 input / $0.60 output (per 1M tokens)
- SWE Score: 0.30 (Optimized for research)
- Usage: Research operations, web search integration

**Fallback Model** (Backup & Reliability)
- Provider: Google
- Model: gemini-2.5-flash-preview-04-17
- Status: ✅ Connected  
- API Key: ✅ Valid (MCP config)
- Cost: Free (Preview model)
- SWE Score: N/A (Reliable fallback)
- Usage: Backup when main models fail

🎯 **Configuration Health**: Excellent ✅
- All models operational
- API keys valid and working
- Good cost/performance balance
- Proper fallback coverage

💰 **Cost Analysis** (Last 30 days):
- Main model usage: $12.50
- Research model usage: $3.20
- Fallback model usage: $0.00
- Total: $15.70
- Average per task: $0.35

📊 **Performance Metrics**:
- Average response time: 2.1s
- Success rate: 99.2%
- Fallback activation: 0.8%
- User satisfaction: High
```

## Model Selection Guidance

### Input: User wants to optimize for cost
```
💰 **Cost Optimization Recommendations**

📊 **Current vs. Optimized Configuration**:

Current Monthly Cost: ~$47 (projected)
Optimized Monthly Cost: ~$23 (projected)
Potential Savings: 51%

🔄 **Recommended Changes**:

**Main Model**: Switch to more cost-effective option
- Current: OpenAI o4-mini ($1.10/$4.40)
- Suggested: OpenAI gpt-4o-mini ($0.15/$0.60)
- Impact: 85% cost reduction, slight quality decrease
- Trade-off: Good for most tasks, may need research model more

**Research Model**: Keep current (already optimized)
- Current: gpt-4o-mini-search-preview  
- Reasoning: Best cost/performance for research tasks
- No change recommended

**Fallback Model**: Consider free alternative
- Current: Google Gemini (Free)
- Alternative: Anthropic Claude Haiku ($0.25/$1.25)
- Recommendation: Keep current (free is optimal)

⚡ **Implementation**:
Would you like me to apply these optimizations? (y/n)
- Update main model configuration
- Test new setup with sample tasks
- Monitor performance for 24 hours
```

### Input: User wants to optimize for quality
```
🎯 **Quality Optimization Recommendations**

📊 **Current vs. Premium Configuration**:

Current Quality Score: 7.2/10
Premium Quality Score: 9.1/10 (estimated)
Cost Increase: +180%

🔄 **Recommended Changes**:

**Main Model**: Upgrade to premium option
- Current: OpenAI o4-mini (SWE: 0.45)
- Suggested: Anthropic Claude Sonnet 4 (SWE: 0.727)
- Impact: 62% quality improvement
- Trade-off: 3x cost increase, much better results

**Research Model**: Upgrade for enhanced research
- Current: gpt-4o-mini-search-preview
- Suggested: Perplexity Deep Research (SWE: 0.211, enhanced search)
- Impact: Better research depth and accuracy
- Trade-off: Higher cost, significantly better insights

**Fallback Model**: Add premium fallback
- Current: Google Gemini (Free)
- Suggested: OpenAI o3-mini (SWE: 0.493)
- Impact: Even fallback provides excellent quality
- Trade-off: Cost for fallback usage

💎 **Premium Benefits**:
- Superior code generation quality
- Better architectural recommendations  
- More accurate complexity analysis
- Enhanced research capabilities
- Reduced need for manual refinement

⚡ **Implementation**:
This configuration is recommended for:
- Complex enterprise projects
- High-stakes development
- Teams that value AI assistance quality
- Projects with sufficient AI budget

Apply premium configuration? (y/n)
```

## Model Troubleshooting

### API Key Issues:
```
🚨 **API Key Problem Detected**

❌ **OpenAI Main Model**: Authentication failed
- Error: Invalid API key or expired token
- Impact: Task generation and updates disabled
- Fallback: Using Google Gemini for now

🔧 **Resolution Steps**:
1. Check API key in MCP configuration
2. Verify OpenAI account has sufficient credits
3. Ensure API key has proper permissions
4. Test with a simple request

💡 **Quick Fix**:
Update your MCP configuration with valid OpenAI API key:
```json
{
  "mcpServers": {
    "taskmaster-ai": {
      "env": {
        "OPENAI_API_KEY": "your-valid-key-here"
      }
    }
  }
}
```

Would you like me to guide you through API key setup? (y/n)
```

### Performance Issues:
```
⚠️ **Performance Degradation Detected**

📊 **Performance Metrics**:
- Average response time: 12.5s (target: <3s)
- Timeout rate: 15% (target: <2%)
- Error rate: 8% (target: <1%)

🔍 **Identified Issues**:
1. **Model Overload**: Main model hitting rate limits
2. **Network Latency**: High latency to model provider
3. **Token Usage**: Requests exceeding optimal token counts

🔧 **Recommended Solutions**:
1. **Enable Request Batching**: Group multiple operations
2. **Optimize Prompts**: Reduce token usage by 30%
3. **Add Model Rotation**: Distribute load across providers
4. **Implement Caching**: Cache common operations

⚡ **Immediate Actions**:
- Switch to faster model temporarily
- Implement request queuing
- Enable fallback for high-latency requests

Apply performance optimizations? (y/n)
```

## Advanced Configuration

### Custom Model Setup:
```
🛠️ **Custom Model Configuration**

🔧 **Ollama Local Models**:
- Run models locally for privacy/cost
- Recommended: CodeLlama, Mistral, Phi-3
- Setup: Configure Ollama base URL
- Trade-offs: Setup complexity, hardware requirements

🌐 **OpenRouter Integration**:
- Access to 100+ models through single API
- Cost optimization through model selection
- Experimental model access
- Setup: OpenRouter API key configuration

🏢 **Enterprise Models**:
- Azure OpenAI for enterprise compliance
- AWS Bedrock for integrated cloud workflows
- Google Vertex AI for Google Cloud integration
- Custom model hosting options

Would you like help setting up any of these options? (y/n)
```

## Integration Features
- Real-time model health monitoring
- Automatic fallback when models fail
- Cost tracking and optimization alerts
- Performance benchmarking across models
- Usage analytics and recommendations
- Seamless model switching without data loss