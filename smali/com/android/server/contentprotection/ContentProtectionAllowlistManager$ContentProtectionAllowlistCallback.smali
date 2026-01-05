.class public final Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;
.super Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;


# direct methods
.method public constructor <init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    invoke-direct {p0}, Landroid/service/contentcapture/IContentProtectionAllowlistCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAllowlist(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;->this$0:Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;

    new-instance v1, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/contentprotection/ContentProtectionAllowlistManager$ContentProtectionAllowlistCallback;Ljava/util/List;)V

    iget-object p0, v0, Lcom/android/server/contentprotection/ContentProtectionAllowlistManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
