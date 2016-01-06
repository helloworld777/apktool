.class public Lcom/ryg/utils/DLUtils;
.super Ljava/lang/Object;
.source "DLUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 166
    if-eqz p0, :cond_0

    .line 168
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getActivityType(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    .line 139
    .local v0, "activityType":I
    :try_start_0
    const-class v2, Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v0, 0x1

    move v1, v0

    .line 157
    .end local v0    # "activityType":I
    .local v1, "activityType":I
    :goto_0
    return v1

    .line 143
    .end local v1    # "activityType":I
    .restart local v0    # "activityType":I
    :catch_0
    move-exception v2

    .line 148
    :cond_0
    :try_start_1
    const-class v2, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    .line 149
    const/4 v0, 0x2

    move v1, v0

    .line 150
    .end local v0    # "activityType":I
    .restart local v1    # "activityType":I
    goto :goto_0

    .line 152
    .end local v1    # "activityType":I
    .restart local v0    # "activityType":I
    :catch_1
    move-exception v2

    :cond_1
    move v1, v0

    .line 157
    .end local v0    # "activityType":I
    .restart local v1    # "activityType":I
    goto :goto_0
.end method

.method private static getActivityType(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 123
    const/4 v0, -0x1

    .line 126
    .local v0, "activityType":I
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 127
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/ryg/utils/DLUtils;->getActivityType(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 132
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilepath"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 55
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/ryg/utils/DLUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 56
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 67
    :goto_0
    return-object v3

    .line 61
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 63
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 64
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilepath"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/ryg/utils/DLUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 73
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 74
    const/4 v3, 0x0

    .line 84
    :goto_0
    return-object v3

    .line 78
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 80
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 81
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 84
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkFilepath"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 42
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 44
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProxyViewAction(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/ryg/utils/DLUtils;->getActivityType(Ljava/lang/Class;)I

    move-result v0

    .line 94
    .local v0, "activityType":I
    invoke-static {v0}, Lcom/ryg/utils/DLUtils;->getProxyViewActionByActivityType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProxyViewAction(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcom/ryg/utils/DLUtils;->getActivityType(Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v0

    .line 89
    .local v0, "activityType":I
    invoke-static {v0}, Lcom/ryg/utils/DLUtils;->getProxyViewActionByActivityType(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getProxyViewActionByActivityType(I)Ljava/lang/String;
    .locals 4
    .param p0, "activityType"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "proxyViewAction":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 115
    :goto_0
    if-nez v0, :cond_0

    .line 116
    const-string v1, "DLUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupported activityType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-object v0

    .line 102
    :pswitch_0
    const-string v0, "com.ryg.dynamicload.proxy.activity.VIEW"

    .line 103
    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "com.ryg.dynamicload.proxy.fragmentactivity.VIEW"

    .line 107
    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 163
    return-void
.end method
