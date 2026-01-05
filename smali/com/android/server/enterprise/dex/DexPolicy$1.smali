.class public final Lcom/android/server/enterprise/dex/DexPolicy$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$1;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    return-void
.end method


# virtual methods
.method public final onBlocked()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$1;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const v0, 0x1040486

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
