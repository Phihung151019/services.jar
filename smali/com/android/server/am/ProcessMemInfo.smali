.class public final Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final adjReason:Ljava/lang/String;

.field public final adjType:Ljava/lang/String;

.field public memtrack:J

.field public final name:Ljava/lang/String;

.field public final oomAdj:I

.field public final pid:I

.field public final procState:I

.field public pss:J

.field public swapPss:J


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/am/ProcessMemInfo;->name:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/am/ProcessMemInfo;->pid:I

    iput p2, p0, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iput p6, p0, Lcom/android/server/am/ProcessMemInfo;->procState:I

    iput-object p4, p0, Lcom/android/server/am/ProcessMemInfo;->adjType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/ProcessMemInfo;->adjReason:Ljava/lang/String;

    return-void
.end method
