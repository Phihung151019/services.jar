.class public final Lcom/android/server/wm/PackagesChange$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/PackagesChange$PackagesDumpCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PackagesChange;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PackagesChange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackagesChange;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final executeShellCommand()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange$1;->this$0:Lcom/android/server/wm/PackagesChange;

    iget-object p0, p0, Lcom/android/server/wm/PackagesChange;->mControllerName:Ljava/lang/String;

    return-object p0
.end method
