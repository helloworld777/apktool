.class public Lcom/ryg/utils/DLConfigs;
.super Ljava/lang/Object;
.source "DLConfigs.java"


# static fields
.field public static final LOG:Z = true

.field public static sPluginClassloader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/ryg/utils/DLConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/ryg/utils/DLConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "soName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 46
    const-string v1, "dynamic_load_configs"

    .line 47
    const/4 v2, 0x4

    .line 46
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 48
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 39
    const-string v1, "dynamic_load_configs"

    .line 40
    const/4 v2, 0x4

    .line 39
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    return-void
.end method
