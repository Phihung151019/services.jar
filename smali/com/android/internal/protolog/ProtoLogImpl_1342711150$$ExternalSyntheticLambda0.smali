.class public final synthetic Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/protolog/ProtoLogCacheUpdater;


# virtual methods
.method public final update(Lcom/android/internal/protolog/common/IProtoLog;)V
    .locals 14

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_ERROR_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v2, p0, v3

    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v4

    const/4 v5, 0x1

    aput-boolean v4, p0, v5

    sget-object v4, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v6

    const/4 v7, 0x2

    aput-boolean v6, p0, v7

    sget-object v6, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v8

    const/4 v9, 0x3

    aput-boolean v8, p0, v9

    sget-object v8, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v10

    const/4 v11, 0x4

    aput-boolean v10, p0, v11

    sget-object v10, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    const/4 v12, 0x5

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BOOT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_RESIZE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IMMERSIVE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STATES_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TASKS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_SHOW_SURFACE_ALLOC_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_DRAW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_SLEEP_TOKEN_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_IME_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WINDOW_INSETS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_CONTENT_RECORDING_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_BACK_PREVIEW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_DREAM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TPL_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_EMBEDDED_WINDOWS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_PRESENTATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_ORIENTATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_FOCUS_LIGHT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_BOOT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_RESIZE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_ADD_REMOVE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_CONFIGURATION_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_FOCUS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_STARTING_WINDOW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_SHOW_TRANSACTIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_SHOW_SURFACE_ALLOC_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_DRAW_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_KEEP_SCREEN_ON_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_MOVEMENT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_IME_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_ANIM_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_FORCE_DEBUG_SYNC_ENGINE_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_INPUT_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v13

    aput-boolean v13, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v0

    aput-boolean v0, p0, v12

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->TEST_GROUP_enabled:[Z

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v3

    invoke-static {p1, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v5

    invoke-static {p1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v7

    invoke-static {p1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v9

    invoke-static {p1, v0, v8}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    aput-boolean v1, p0, v11

    invoke-static {p1, v0, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->-$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p1

    aput-boolean p1, p0, v12

    return-void
.end method
