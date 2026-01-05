.class public final Lcom/android/server/display/DisplayGroupAllocator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCanDefaultDisplayEnterDesktopMode:Z

.field public mCanDeviceEnterDesktopMode:Z

.field public mContext:Landroid/content/Context;

.field public mExternalDesktopMode:I

.field public final mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

.field public mReason:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayGroupAllocator$Injector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mInjector:Lcom/android/server/display/DisplayGroupAllocator$Injector;

    iput-object p1, p0, Lcom/android/server/display/DisplayGroupAllocator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isDesktopModeSupportedOnDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    return p0

    :cond_1
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->DW_ALLOCATE_SECONDARY_GROUP_TO_OVERLAY_DISPLAY:Z

    const/4 v0, 0x4

    if-nez p0, :cond_2

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-eq p2, p0, :cond_4

    if-eq p2, v0, :cond_4

    const/4 p0, 0x3

    if-ne p2, p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->flags:I

    const/high16 p2, 0x4000000

    and-int/2addr p0, p2

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    return p0
.end method
