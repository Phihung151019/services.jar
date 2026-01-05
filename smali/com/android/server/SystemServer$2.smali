.class public final Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    return-void
.end method


# virtual methods
.method public final onTransactionError(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->frozenBinderTransactionDetected(IIII)V

    return-void
.end method
