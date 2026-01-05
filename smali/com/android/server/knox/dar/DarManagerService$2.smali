.class public final Lcom/android/server/knox/dar/DarManagerService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$bindingTime:J

.field public final synthetic val$label:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$procName:Ljava/lang/String;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$bindingTime:J

    iput p1, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$pid:I

    iput p2, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$uid:I

    iput-object p3, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$procName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$bindingTime:J

    iget v3, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$pid:I

    iget v4, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$uid:I

    iget-object v5, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$procName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/knox/dar/DarManagerService$2;->val$label:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
