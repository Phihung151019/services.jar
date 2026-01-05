.class public final Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEventType:I

.field public mForce:Z

.field public mGestureFrom:I

.field public final mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(ILcom/android/server/wm/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mTask:Lcom/android/server/wm/Task;

    iput p1, p0, Lcom/android/server/wm/TaskOrganizerController$PendingTaskEvent;->mEventType:I

    return-void
.end method
