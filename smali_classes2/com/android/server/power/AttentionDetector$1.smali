.class public final Lcom/android/server/power/AttentionDetector$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/AttentionDetector;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    iput-object p3, p0, Lcom/android/server/power/AttentionDetector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    return-void
.end method
