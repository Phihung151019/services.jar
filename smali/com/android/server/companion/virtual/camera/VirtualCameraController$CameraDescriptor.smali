.class public final Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    const-string/jumbo v0, "VirtualCameraController"

    const-string/jumbo v1, "Virtual camera binder died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->this$0:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {v0, p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    return-void
.end method
