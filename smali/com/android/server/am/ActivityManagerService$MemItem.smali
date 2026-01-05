.class public final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final hasActivities:Z

.field public final id:I

.field public final isProc:Z

.field public final label:Ljava/lang/String;

.field public final mPrivateDirty:J

.field public final mRss:J

.field public final pss:J

.field public final shortLabel:Ljava/lang/String;

.field public subitems:Ljava/util/ArrayList;

.field public final swapPss:J

.field public final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mPrivateDirty:J

    iput p11, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->userId:I

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    iput-wide p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    iput-wide p9, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->mPrivateDirty:J

    iput p11, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    iput p12, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->userId:I

    iput-boolean p13, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    return-void
.end method
