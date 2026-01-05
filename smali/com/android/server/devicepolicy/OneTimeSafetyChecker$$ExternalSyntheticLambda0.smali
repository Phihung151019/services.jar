.class public final synthetic Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/OneTimeSafetyChecker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/OneTimeSafetyChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/OneTimeSafetyChecker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/OneTimeSafetyChecker;

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->mDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Self destructing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", as it was not automatically disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OneTimeSafetyChecker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OneTimeSafetyChecker;->disableSelf()V

    return-void
.end method
