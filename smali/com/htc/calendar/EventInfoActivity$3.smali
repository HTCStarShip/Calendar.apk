.class Lcom/htc/calendar/EventInfoActivity$3;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 1752
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1756
    .local v6, location:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->isGeoCode(Ljava/lang/String;)Lcom/htc/calendar/EventInfoActivity$GeoCode;
    invoke-static {v11, v6}, Lcom/htc/calendar/EventInfoActivity;->access$700(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Lcom/htc/calendar/EventInfoActivity$GeoCode;

    move-result-object v3

    .line 1758
    .local v3, g:Lcom/htc/calendar/EventInfoActivity$GeoCode;
    const-string v11, "EventInfoActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mClickLocationIconListener: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1832
    :goto_0
    return-void

    .line 1764
    :cond_0
    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/calendar/EventInfoActivity;->access$800(Lcom/htc/calendar/EventInfoActivity;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/calendar/HtcUtils;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->isMapURL(Ljava/lang/String;)Z
    invoke-static {v11, v6}, Lcom/htc/calendar/EventInfoActivity;->access$900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1765
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1766
    .local v4, intent:Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1768
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 1770
    const-string v11, "com.htc.laputa.map.action.REVERSE_GEOCODE_ON_MAP"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const-string v11, "Longitude"

    iget-object v12, v3, Lcom/htc/calendar/EventInfoActivity$GeoCode;->lon:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1772
    const-string v11, "Latitude"

    iget-object v12, v3, Lcom/htc/calendar/EventInfoActivity$GeoCode;->lat:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 1773
    const-string v11, "REVERSE_GEOCODE_ON_MAP_BUNDLE"

    invoke-virtual {v4, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1780
    :goto_1
    :try_start_0
    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v11, v4}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1781
    :catch_0
    move-exception v2

    .line 1782
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "EventInfoActivity"

    const-string v12, "Laputa is exist, but exception :"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1775
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v11, "com.htc.laputa.map.action.REVERSE_ADDR_ON_MAP"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1776
    const-string v11, "Address"

    invoke-virtual {v1, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    const-string v11, "REVERSE_ADDR_ON_MAP_BUNDLE"

    invoke-virtual {v4, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 1785
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->isMapURL(Ljava/lang/String;)Z
    invoke-static {v11, v6}, Lcom/htc/calendar/EventInfoActivity;->access$900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1787
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1788
    .local v8, mapIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isLaunchViaDispatcher()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1789
    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.htc.HtcLinkifyDispatcher"

    const-string v13, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1791
    :cond_3
    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v11, v8}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1792
    .end local v8           #mapIntent:Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 1793
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "EventInfoActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ActivityNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1797
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v0, ""

    .line 1800
    .local v0, addr:Ljava/lang/String;
    :try_start_2
    const-string v11, "utf-8"

    invoke-static {v6, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    .line 1809
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1810
    move-object v0, v6

    .line 1815
    :cond_5
    if-eqz v3, :cond_7

    .line 1816
    :try_start_3
    iget-object v11, v3, Lcom/htc/calendar/EventInfoActivity$GeoCode;->lon:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1817
    .local v7, lon:Ljava/lang/String;
    iget-object v11, v3, Lcom/htc/calendar/EventInfoActivity$GeoCode;->lat:Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1818
    .local v5, lat:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1822
    .end local v5           #lat:Ljava/lang/String;
    .end local v7           #lon:Ljava/lang/String;
    .local v10, uri:Landroid/net/Uri;
    :goto_3
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v8, v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1823
    .restart local v8       #mapIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isLaunchViaDispatcher()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1824
    new-instance v11, Landroid/content/ComponentName;

    const-string v12, "com.htc.HtcLinkifyDispatcher"

    const-string v13, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1826
    :cond_6
    iget-object v11, p0, Lcom/htc/calendar/EventInfoActivity$3;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v11, v8}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1827
    .end local v8           #mapIntent:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v2

    .line 1828
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "EventInfoActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ActivityNotFoundException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1801
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 1802
    .local v9, une:Ljava/io/UnsupportedEncodingException;
    const-string v11, "EventInfoActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can\'t transfer location("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1803
    const-string v0, ""

    .line 1807
    goto/16 :goto_2

    .line 1804
    .end local v9           #une:Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v2

    .line 1805
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v11, "EventInfoActivity"

    const-string v12, "error"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1806
    const-string v0, ""

    goto/16 :goto_2

    .line 1820
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "geo:0,0?q="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v10

    .restart local v10       #uri:Landroid/net/Uri;
    goto/16 :goto_3
.end method
