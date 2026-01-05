.class public abstract Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public static getVersionProximity(Landroid/app/compat/PackageOverride;J)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static isVersionAfterRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVersionInRange(Landroid/app/compat/PackageOverride;J)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
