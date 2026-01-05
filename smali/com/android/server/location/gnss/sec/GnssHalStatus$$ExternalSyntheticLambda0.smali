.class public final synthetic Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/GnssHalStatus;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/GnssHalStatus;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/GnssHalStatus;

    iput-wide p2, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/GnssHalStatus;

    iget-wide v1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "GnssHalStatus"

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, v0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    if-nez v0, :cond_0

    const-string v0, "Calling GnssNative was failed. It will be recovered."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "dev.gnss.initializehal"

    const-string/jumbo v1, "ON"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v0, "checkHalStatusAndReset() failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
