.class public final Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public adj:I

.field public app:Lcom/android/server/am/ProcessRecord;

.field public appUid:I

.field public foregroundActivities:Z

.field public logUid:I

.field public mAdjType:Ljava/lang/String;

.field public mHasVisibleActivities:Z

.field public mState:Lcom/android/server/am/ProcessStateRecord;

.field public procState:I

.field public processStateCurTop:I

.field public schedGroup:I

.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->this$0:Lcom/android/server/am/OomAdjuster;

    return-void
.end method
