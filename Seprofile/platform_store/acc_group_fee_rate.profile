%%%% {acc_group_id, [volume/total, dr_cr_direction, fee_group_id, fee_type, {min, max, fee_rateid}]}.
%% Network 1
{1001, [total_count, 6, "NSC", slab, [{1,10000,501}, {10001,se_infinity,502}] ]}.
{1002, [total_value,  7, "APC", slab, [{1,8000000, 503}, {8000001,se_infiniy,504}] ]}.
{1003, [total_count, 6, "NSC", tier, [{1,10000,501}, {10001,se_infinity,502}] ]}.
{1004, [total_value,  7, "APC", tier, [{1,500, 503}, {501,se_infinity,504}] ]}.

%% Network 2
{2001, [total_count, 6, "NSC", slab, [{1,20000,601}, {20001,se_infinity,602}] ]}.
{2002, [total_value,  7, "APC", slab, [{1,7000000, 603}, {7000001,se_infinity,604}] ]}.

%% Network 3
{3001, [total_count, 6, "NSC", slab, [{1,30000,701}, {30001,se_infinity,702}] ]}.
{3002, [total_value,  7, "APC", slab, [{1,6000000, 703}, {6000001,se_infinity,704}] ]}.