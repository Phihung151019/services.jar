.class public final synthetic Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/location/contexthub/HubInfoRegistry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/HubInfoRegistry;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/contexthub/HubInfoRegistry;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "HubInfoRegistry"

    const-string/jumbo v1, "Releasing the wakelock fails - "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
