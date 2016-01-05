.class public Lcom/example/steven/myview/ProxyMainActivity$PluginItem;
.super Ljava/lang/Object;
.source "ProxyMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/steven/myview/ProxyMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginItem"
.end annotation


# instance fields
.field public launcherActivityName:Ljava/lang/String;

.field public launcherServiceName:Ljava/lang/String;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public pluginPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method
