.class public final Lcom/android/server/smartclip/SpenThemeManager$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    const-string/jumbo p2, "package removed = "

    const-string/jumbo v0, "SpenThemeManager"

    invoke-static {p2, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$1;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Lcom/android/server/smartclip/SpenThemeManager$2;

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
