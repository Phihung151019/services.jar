.class public final Lcom/android/server/am/ComponentAliasResolver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ComponentAliasResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ComponentAliasResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ComponentAliasResolver$1;->this$0:Lcom/android/server/am/ComponentAliasResolver;

    invoke-static {p0}, Lcom/android/server/am/ComponentAliasResolver;->-$$Nest$mrefresh(Lcom/android/server/am/ComponentAliasResolver;)V

    return-void
.end method
