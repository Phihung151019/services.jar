.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:Landroid/companion/virtual/IVirtualDevice;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;->f$1:Landroid/companion/virtual/IVirtualDevice;

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;->f$1:Landroid/companion/virtual/IVirtualDevice;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;->f$2:I

    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V

    return-void
.end method
