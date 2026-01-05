.class public final Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;
.super Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    iput-object p4, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinAppWidgetRequestInner;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method
