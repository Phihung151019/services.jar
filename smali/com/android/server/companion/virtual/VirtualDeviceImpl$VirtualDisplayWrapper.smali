.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIsMirror:Z

.field public final mIsTrusted:Z

.field public final mToken:Landroid/hardware/display/IVirtualDisplayCallback;

.field public final mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iput-boolean p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    iput-boolean p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    return-void
.end method
