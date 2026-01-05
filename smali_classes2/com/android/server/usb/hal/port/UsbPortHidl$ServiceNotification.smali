.class public final Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/port/UsbPortHidl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo p3, "Usb hal service started "

    const-string v0, " "

    invoke-static {p3, p1, v0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    const-string/jumbo p2, "UsbPortManager"

    const/4 p3, 0x4

    invoke-static {p3, p2, p1}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$ServiceNotification;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;->connectToProxy$1()V

    return-void
.end method
