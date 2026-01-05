.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

.field public mBackType:I

.field public mCloseTarget:Lcom/android/server/wm/WindowContainer;

.field public mIsLaunchBehind:Z

.field public final mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

.field public mOpenTargets:[Lcom/android/server/wm/WindowContainer;

.field public mSnapshot:Landroid/window/TaskSnapshot;

.field public final synthetic this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;Landroid/window/BackAnimationAdapter;Lcom/android/server/wm/BackNavigationController$NavigationMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iput-object p2, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

    iput-object p3, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->mNavigationMonitor:Lcom/android/server/wm/BackNavigationController$NavigationMonitor;

    return-void
.end method
