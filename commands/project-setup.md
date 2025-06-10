# Project Setup

Initialize or verify complete TaskMaster project setup.

## Instructions

1. **Check Current State**:
   - Verify if TaskMaster is already initialized
   - Check configuration file existence
   - Validate API key status

2. **Initialize if Needed**:
   - Run `mcp__taskmaster-ai__initialize_project` with current directory as projectRoot
   - Set `yes=true` for automated setup
   - Skip installation only if already done

3. **Configure Models**:
   - Check current model configuration with `mcp__taskmaster-ai__models`
   - If not configured or incomplete, guide user through setup:
     - Main model: High-performance model for task generation
     - Research model: Search-enabled model for research tasks
     - Fallback model: Reliable backup model
   - Verify all API keys are working

4. **Create Directory Structure**:
   - Ensure `.taskmaster/` exists
   - Create `docs/` for PRD storage
   - Create `tasks/` for task files
   - Create `reports/` for analysis outputs

5. **Prepare PRD Template**:
   - Create `.taskmaster/docs/prd-template.md` with comprehensive structure
   - Include sections for all requirement types

6. **Validation**:
   - Test TaskMaster functionality with a simple task
   - Verify model connectivity
   - Confirm all components are working

## Success Criteria
- ✅ TaskMaster initialized and configured
- ✅ All three models configured with working API keys
- ✅ Directory structure created
- ✅ Ready for PRD creation or task management

## Error Handling
- If API keys missing, provide clear setup instructions
- If models fail, suggest alternatives
- If directory permissions issue, guide resolution

## Output
Provide setup status summary and next recommended steps.