.class public final Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public final mCocktailBarList:Ljava/util/ArrayList;

.field mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

.field public mContext:Landroid/content/Context;

.field public mRegisteredCocktailBarSettingsObserver:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "MARs:EdgeAppFilter"

    const-string v0, "IllegalArgumentException occurred in unregisterEnabledCocktailBarChanged()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 3

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    if-eq p3, v2, :cond_1

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x11

    monitor-exit p1

    return p0

    :cond_2
    monitor-exit p1

    return v0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCocktailBarPackage()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "cocktail_bar_enabled_cocktails"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "cocktail_bar_enabled_cocktails"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mCocktailBarSettingsObserver:Landroid/database/ContentObserver;

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->mRegisteredCocktailBarSettingsObserver:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V

    return-void
.end method
