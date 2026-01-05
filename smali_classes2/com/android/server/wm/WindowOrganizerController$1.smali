.class public final Lcom/android/server/wm/WindowOrganizerController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field public final synthetic val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;


# direct methods
.method public constructor <init>(Landroid/window/WindowContainerTransaction$ContainerChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getToken()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController$1;->val$cc:Landroid/window/WindowContainerTransaction$ContainerChange;

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$ContainerChange;->getChange()Landroid/window/WindowContainerTransaction$Change;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/window/WindowContainerTransaction$Change;

    const/4 p0, 0x0

    return-object p0
.end method
