.class public final Lcom/android/server/RescueParty$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$failedPackage:Ljava/lang/String;

.field public final synthetic val$level:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/server/RescueParty$1;->val$level:I

    iput-object p2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string/jumbo v0, "RescueParty by "

    :try_start_0
    const-string/jumbo v1, "persist.sys.emergency_reset"

    const-string/jumbo v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "emergency"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/RescueParty;->isUnrecoverable:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/RescueParty$1;->val$level:I

    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/RescueParty;->executeEraseAppData(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string/jumbo v2, "PlatformReset"

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/RescueParty$1;->val$level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/RescueParty$1;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/RecoverySystem;->rebootPromptAndWipeAppData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    iget v1, p0, Lcom/android/server/RescueParty$1;->val$level:I

    iget-object p0, p0, Lcom/android/server/RescueParty$1;->val$failedPackage:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/server/RescueParty;->logRescueException(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
