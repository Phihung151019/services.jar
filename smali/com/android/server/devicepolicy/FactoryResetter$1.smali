.class public final Lcom/android/server/devicepolicy/FactoryResetter$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/FactoryResetter;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    iget-object p1, p1, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "FactoryResetter"

    const-string v0, "Factory reset confirmed by %s, proceeding"

    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "IOException calling underlying systems"

    invoke-static {p2, p0, v0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
