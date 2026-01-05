.class public final Lcom/android/server/SensitiveContentProtectionManagerService$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 3

    const-wide/32 v0, 0x80000

    const-string/jumbo v2, "SensitiveContentProtectionManagerService.onProjectionStart"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    const-string/jumbo p1, "SensitiveContentProtectionManagerService.onProjectionStop"

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
