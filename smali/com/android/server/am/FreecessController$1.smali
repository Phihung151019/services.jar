.class public final Lcom/android/server/am/FreecessController$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    const-string/jumbo p1, "com.sec.android.app.camera"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    :cond_0
    return-void
.end method
