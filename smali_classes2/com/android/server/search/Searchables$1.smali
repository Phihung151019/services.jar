.class public final Lcom/android/server/search/Searchables$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    const/4 p0, 0x0

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    move p0, v1

    :cond_2
    if-eqz v0, :cond_3

    if-nez p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    if-eqz p0, :cond_4

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget p0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    iget p1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method
