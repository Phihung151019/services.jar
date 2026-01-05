.class public final synthetic Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppStartInfoTracker;

.field public final synthetic f$1:Ljava/io/PrintWriter;

.field public final synthetic f$2:Landroid/icu/text/SimpleDateFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/AppStartInfoTracker;

    iput-object p2, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$2:Landroid/icu/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/am/AppStartInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$1:Ljava/io/PrintWriter;

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;->f$2:Landroid/icu/text/SimpleDateFormat;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, p2, p0}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
