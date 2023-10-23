#ifndef SCRIPT_ENGINE_HH
#define SCRIPT_ENGINE_HH

#include "global.h"

#include <cstring>

#define SCRIPT_STACK_MAX 100
#define SCRIPT_VMMEM_MAX 100

// TODO: rename this
// TODO: retype the related fields
struct JumpTableEnt
{
    int value;
    u32 target;

    bool operator < (int const & other) const
    {
        return value < other;
    }
};

struct ScriptStack
{
    void Clear()
    {
        top = 0;
        std::memset(data, 0, sizeof(data));
    }

    int & Top()
    {
        return data[top - 1];
    }

    void Pop()
    {
        if (top != 0)
            top--;
    }

    void Push(int const & val)
    {
        if (top < SCRIPT_STACK_MAX)
        {
            data[top++] = val;
        }
    }

    i32 data[SCRIPT_STACK_MAX];
    u32 top;
};

struct AScriptEngine
{
    AScriptEngine();
    virtual ~AScriptEngine();

    bool Load(void const * script_data);
    virtual int method_0803EFD8();
    int method_0803F02C() const;
    int Opcode(int offset) const;
    fu8 OpcodeFlag(int offset) const;
    u32 Operand32(int offset) const;
    u32 Operand16(int offset) const;
    u32 Operand8(int offset) const;
    void method_0803F0DC() const;
    int NextInstruction();
    char const * GetString(u32 id) const;

    virtual int OnCall(int id) = 0;

    /* +000 */ i32 unk_00;
    /* +004 */ u8 const * code;
    /* +008 */ u32 pc;
    /* +00C */ u32 code_length;
    /* +010 */ u32 string_count;
    /* +014 */ u32 const * string_offset_table;
    /* +018 */ char const * string_pool;
    /* +01C */ u32 jump_count;
    /* +020 */ u8 const * jump_table;
    /* +024 */ ScriptStack stack;
    /* +1B8 */ i32 vmmem[SCRIPT_VMMEM_MAX];
    /* +348 */ i32 unk_348;
    /* +34C */ // vtable
};

#endif // SCRIPT_ENGINE_HH
