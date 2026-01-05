.class public final Lcom/android/server/appop/LegacyHistoricalRegistry$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iput-object p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method
