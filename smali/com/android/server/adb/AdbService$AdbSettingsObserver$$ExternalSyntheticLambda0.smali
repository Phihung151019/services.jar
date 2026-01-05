.class public final synthetic Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/adb/AdbService;

    check-cast p2, Ljava/lang/Boolean;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-nez p2, :cond_0

    iput-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iput-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/server/adb/AdbService;->semPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :goto_0
    const-string/jumbo p2, "adbd"

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "ctl.start"

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    if-nez p0, :cond_3

    iget-boolean p0, p1, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-nez p0, :cond_3

    const-string/jumbo p0, "ctl.stop"

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Byte;

    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-static {p1, p0, p2}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->$r8$lambda$QsA9Am4S85-6tzWrx_VQgRFMz-I(Lcom/android/server/adb/AdbService;ZB)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
