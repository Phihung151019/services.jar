.class public final Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->getEnabledAccessibilityPackage()V

    return-void
.end method
