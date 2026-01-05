.class public final Lcom/android/server/am/ServiceRecord$removeConnectionItem;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final c:Lcom/android/server/am/ConnectionRecord;

.field public final enqueueOomAdj:Z

.field public final skipAct:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field public final skipApp:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->c:Lcom/android/server/am/ConnectionRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipApp:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->skipAct:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    iput-boolean p4, p0, Lcom/android/server/am/ServiceRecord$removeConnectionItem;->enqueueOomAdj:Z

    return-void
.end method
