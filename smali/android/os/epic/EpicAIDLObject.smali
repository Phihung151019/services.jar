.class public final Landroid/os/epic/EpicAIDLObject;
.super Landroid/os/epic/IEpicObject$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field private static final EPIC_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest"

.field private static final EPIC_CLASS_STUB:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest$Stub"

.field private static final EPIC_HANDLE_CLASS:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicHandle"

.field private static final IEPIC_AIDL_INTERFACE:Ljava/lang/String; = "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

.field private static final TAG:Ljava/lang/String; = "EpicObject"

.field private static m_epic_asInterface_func:Ljava/lang/reflect/Method;

.field private static m_epic_handle_cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m_epic_hint_release_func:Ljava/lang/reflect/Method;

.field private static m_epic_init_func:Ljava/lang/reflect/Method;

.field private static m_epic_init_multi_func:Ljava/lang/reflect/Method;

.field private static m_epic_perf_hint_func:Ljava/lang/reflect/Method;

.field private static m_epic_release_conditional_func:Ljava/lang/reflect/Method;

.field private static m_epic_release_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m_epic_request_conditional_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_opt_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

.field private static m_epic_request_stub_cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static m_has_load:Z


# instance fields
.field private m_binder:Landroid/os/IBinder;

.field private m_handle_obj:Ljava/lang/Object;

.field private m_request_obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/epic/IEpicObject$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;->create_instance()V

    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;->getService()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    const-string v0, "EpicObject"

    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;-><init>()V

    sget-boolean v1, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "failed to get request_obj"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>([I)V
    .locals 4

    const-string v0, "EpicObject"

    invoke-direct {p0}, Landroid/os/epic/EpicAIDLObject;-><init>()V

    sget-boolean v1, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    if-eqz v1, :cond_2

    sget-object v1, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "failed to get request_obj"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private create_instance()V
    .locals 17

    const-class v1, Landroid/os/epic/EpicAIDLObject;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_2
    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicHandle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_stub_cls:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, [I

    aput-object v8, v7, v5

    new-array v8, v2, [Ljava/lang/Class;

    sget-object v9, Landroid/os/epic/EpicAIDLObject;->m_epic_handle_cls:Ljava/lang/Class;

    aput-object v9, v8, v5

    new-array v10, v2, [Ljava/lang/Class;

    aput-object v9, v10, v5

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Class;

    aput-object v9, v12, v5

    aput-object v6, v12, v2

    const/4 v13, 0x2

    aput-object v6, v12, v13

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v9, v6, v5

    const-class v11, [I

    aput-object v11, v6, v2

    const-class v11, [I

    aput-object v11, v6, v13

    new-array v11, v13, [Ljava/lang/Class;

    aput-object v9, v11, v5

    const-class v14, Ljava/lang/String;

    aput-object v14, v11, v2

    new-array v14, v13, [Ljava/lang/Class;

    aput-object v9, v14, v5

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v2

    new-array v15, v13, [Ljava/lang/Class;

    aput-object v9, v15, v5

    const-class v16, Ljava/lang/String;

    aput-object v16, v15, v2

    new-array v13, v13, [Ljava/lang/Class;

    aput-object v9, v13, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v13, v2

    const-string/jumbo v5, "asInterface"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_asInterface_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "init"

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_init_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "init_multi"

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_init_multi_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "acquire_lock"

    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "release_lock"

    invoke-virtual {v0, v3, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "acquire_lock_option"

    invoke-virtual {v0, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "acquire_lock_multi_option"

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "acquire_lock_conditional"

    invoke-virtual {v0, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "release_lock_conditional"

    invoke-virtual {v0, v3, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "perf_hint"

    invoke-virtual {v0, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    sget-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_request_cls:Ljava/lang/Class;

    const-string/jumbo v3, "hint_release"

    invoke-virtual {v0, v3, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/os/epic/EpicAIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    sput-boolean v2, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EpicObject"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private getService()V
    .locals 1

    const-string/jumbo v0, "vendor.samsung_slsi.hardware.epic.IEpicRequest/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string p0, "EpicObject"

    const-string/jumbo v0, "failed to get service daemon binder"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public acquire_lock()Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EpicObject"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public acquire_lock_conditional(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_conditional_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public acquire_lock_option(II)Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public acquire_lock_option_multi([I[I)Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_request_opt_multi_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public hint_release(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_hint_release_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public perf_hint(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_perf_hint_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public release_lock()Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_release_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EpicObject"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public release_lock_conditional(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Landroid/os/epic/EpicAIDLObject;->m_has_load:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/epic/EpicAIDLObject;->m_request_obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Landroid/os/epic/EpicAIDLObject;->m_epic_release_conditional_func:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/os/epic/EpicAIDLObject;->m_handle_obj:Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EpicObject"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method
