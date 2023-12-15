<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta name="viewport" content="width=device-width, maximum-scale=2.0, user-scalable=yes"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Kết quả xổ số - KQXS Ngày 01/12/2023 - Xổ Số Hôm Nay</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body class="pagebody">
<div id="navbar" class="navbar">
    <div class="pcontent">
        <div id="cssmenu">
            <ul>
                <li class="has-sub"><a href="/ket-qua-xo-so"><span>Xổ Số Hôm nay</span></a>
                </li>
                <li class="has-sub"><a href="/ket-qua-xo-so"><span>Xổ Số Miền Trung</span></a>
                </li>


                <li class="has-sub"><a href="/in-ve-do"><span>Xổ Số Miền Nam</span></a>

                </li>
                <li class="has-sub"><a href="/in-ve-do"><span>Xổ Số Miền Bắc</span></a>

                </li>

            </ul>
        </div>
        <div class="topbarmenu hidemin720">
        </div>
    </div>
</div>
<div class="pcontent">
    <%--   miền nam--%>
    <div class="box_kqxs" id="kqxs_1-13-12-2023">
        <div class="xsmn miennam4cot">
            <div class="tenbkqxs">
                <div class="title"><a href="/truc-tiep-xo-so-mien-nam-xstt-mn-xsmn">KẾT QUẢ XỔ SỐ Miền Nam<span
                        class="hidemax460"> - KQXS MN</span></a></div>
                <div class="ngaykqxs"><a href="/ket-qua-xo-so/ngay-13-12-2023"
                                         title="Click xem KQXS 3 Miền Ngày: 13/12/23"><span
                        class="date"><span
                        class="daymonth">${southern.get(0).getFull_date().getDayOfMonth()}/${southern.get(0).getFull_date().getMonthValue()}</span><span
                        class="year">${southern.get(0).getFull_date().getYear()}</span></span></a></div>
            </div>
            <div class="top_adv"><a href="https://ketqua.app" target="_blank"
                                    title="Tải ứng dụng xổ số về điện thoại"><img
                    align="absMiddle" alt="" border="0"
                    src="/upload/images/banner/banner-adv-600x60_app_kqxs_xosohomnay.gif" h14y3u28o=""></a></div>
            <div class="kqxs_content">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <td class="leftcl">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                <tr>
                                    <td class="thu"><a href="/ket-qua-xo-so-mien-nam-kqxs-mn/thu-tu"
                                                       title="Click xem tất cả KQXS Miền Nam ngày T.Tư">T.Tư</a></td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_tam">100N</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_bay">200N</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_sau">400N</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_nam">1TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_tu">3TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_ba">10TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_nhi">15TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_nhat">30TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_dac_biet">2Tỷ</td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                        <td class="rightcl">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                <tr>
                                    <c:forEach var="s" items="${southern}">

                                        <td>
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0"
                                                   class="tblKQTinh">
                                                <tbody>
                                                <tr>
                                                    <td class="tentinh"><a href="/xo-so-dong-nai"
                                                                           title="Xổ Số  Đồng Nai"><span
                                                            class="namelong">${s.getName()}</span><span
                                                            class="nameshort">Đ.Nai</span></a></td>
                                                </tr>
                                                <tr>
                                                    <td class="loaive">12K2</td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_tam">
                                                        <div class="lq_1 dayso"
                                                             data="37">${s.getEighth_prize()}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_bay">
                                                        <div class="lq_1 dayso"
                                                             data="057">${s.getSeventh_prize()}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_sau">
                                                        <div class="lq_1 dayso"
                                                             data="4571">${s.changeToList(s.getSixth_prize()).get(0)}</div>
                                                        <div class="lq_2 dayso"
                                                             data="8786">${s.changeToList(s.getSixth_prize()).get(1)}</div>
                                                        <div class="lq_3 dayso"
                                                             data="8672">${s.changeToList(s.getSixth_prize()).get(2)}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_nam">
                                                        <div class="lq_1 dayso"
                                                             data="8296">${s.fifth_prize}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_tu">
                                                        <div class="lq_1 dayso"
                                                             data="56061">${s.changeToList(s.fourth_prize).get(0)}</div>
                                                        <div class="lq_2 dayso"
                                                             data="51076">${s.changeToList(s.fourth_prize).get(1)}</div>
                                                        <div class="lq_3 dayso"
                                                             data="44553">${s.changeToList(s.fourth_prize).get(2)}</div>
                                                        <div class="lq_4 dayso"
                                                             data="71402">${s.changeToList(s.fourth_prize).get(3)}</div>
                                                        <div class="lq_5 dayso"
                                                             data="66404">${s.changeToList(s.fourth_prize).get(4)}</div>
                                                        <div class="lq_6 dayso"
                                                             data="14316">${s.changeToList(s.fourth_prize).get(5)}</div>
                                                        <div class="lq_7 dayso"
                                                             data="40333">${s.changeToList(s.fourth_prize).get(6)}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_ba">
                                                        <div class="lq_1 dayso"
                                                             data="97877">${s.changeToList(s.getThird_prize()).get(0)}</div>
                                                        <div class="lq_2 dayso"
                                                             data="33640">${s.changeToList(s.getThird_prize()).get(1)}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_nhi">
                                                        <div class="lq_1 dayso"
                                                             data="08438">${s.getSecond_prize()}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_nhat">
                                                        <div class="lq_1 dayso"
                                                             data="79437">${s.getFirst_prize()}</div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_dac_biet">
                                                        <div class="lq_1 dayso"
                                                             data="899264">${s.getSpecial_prize()}</div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </c:forEach>

                                </tr>
                                </tbody>
                            </table>

                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="boxBottom" data-id="1-13-12-2023">
            <div class="config_Bangketqua_list">
                <div class="config_Item" data="0">All</div>
                <div class="config_Item" data="2">2 số</div>
                <div class="config_Item" data="3">3 Số</div>
            </div>
            <div class="daysoThongkes">
                <div class="daysoThongke">0</div>
                <div class="daysoThongke">1</div>
                <div class="daysoThongke">2</div>
                <div class="daysoThongke">3</div>
                <div class="daysoThongke">4</div>
                <div class="daysoThongke">5</div>
                <div class="daysoThongke">6</div>
                <div class="daysoThongke">7</div>
                <div class="daysoThongke">8</div>
                <div class="daysoThongke">9</div>
            </div>
        </div>
        <div class="boxdauduoimien" id="box_1-13-12-2023">
            <input class="btntk2sc " type="button" value="Loto Hàng chục" data-id="1-13-12-2023">
            <input class="btntkhdv" type="button" value="Loto Hàng đơn vị" data-id="1-13-12-2023">
        </div>
        <div id="DDM1-13-12-2023"></div>
    </div>

    <div class="clear"></div>
    <%--    miền trung--%>
    <div class="box_kqxs" id="kqxs_3-01-12-2023">
        <div class="xsmn miennam4cot">
            <div class="tenbkqxs">
                <div class="title"><a
                        href="/truc-tiep-xo-so-mien-trung-xstt-mt-xsmt">KẾT QUẢ XỔ SỐ
                    Miền Trung<span class="hidemax460"> - KQXS MT</span></a></div>
                <div class="ngaykqxs"><a href="/ket-qua-xo-so/ngay-01-12-2023"
                                         title="Click xem KQXS 3 Miền Ngày: 01/12/23"><span
                        class="date"><span
                        class="daymonth">${central.get(0).getFull_date().getDayOfMonth()}/${central.get(0).getFull_date().getMonthValue()}</span><span
                        class="year">${central.get(0).getFull_date().getYear()}</span></span></a></div>
            </div>
            <div class="top_adv"><a href="https://ketqua.app" target="_blank" title="Tải ứng dụng xổ số về điện thoại"><img align="absMiddle" alt="" border="0" src="/upload/images/banner/banner-adv-600x60_app_kqxs_xosohomnay.gif" h14y3u28o="" lxtusfjs3=""></a></div>
            <div class="kqxs_content">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <td class="leftcl">
                            <table width="100%" border="0" cellspacing="0"
                                   cellpadding="0">
                                <tbody>
                                <tr>
                                    <td class="thu"><a
                                            href="/ket-qua-xo-so-mien-trung-kqxs-mt/thu-sau"
                                            title="Click xem tất cả KQXS Miền Trung ngày T.Sáu">T.Sáu</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_tam">100N</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_bay">200N</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_sau">400N</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_nam">1TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_tu">3TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_ba">10TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_nhi">15TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_nhat">30TR</td>
                                </tr>
                                <tr>
                                    <td class="ten_giai_dac_biet">2Tỷ</td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                        <td class="rightcl">
                            <table width="100%" border="0" cellspacing="0"
                                   cellpadding="0">
                                <tbody>
                                <tr>
                                    <c:forEach var="c" items="${central}">

                                        <td>
                                            <table width="100%" border="0" cellspacing="0"
                                                   cellpadding="0" class="tblKQTinh">
                                                <tbody>
                                                <tr>
                                                    <td class="tentinh"><a
                                                            href="/xo-so-gia-lai"
                                                            title="Xổ Số  Gia Lai"><span
                                                            class="namelong">${c.getName()}</span><span
                                                            class="nameshort">${c.getName()}</span></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="loaive"></td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_tam">
                                                        <div class="lq_1 dayso"
                                                             data="54">${c.getEighth_prize()}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_bay">
                                                        <div class="lq_1 dayso"
                                                             data="${c.getSeventh_prize()}">${c.getSeventh_prize()}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_sau">
                                                        <div class="lq_1 dayso"
                                                             data="9746">${c.changeToList(c.getSixth_prize()).get(0)}
                                                        </div>
                                                        <div class="lq_2 dayso"
                                                             data="3315">${c.changeToList(c.getSixth_prize()).get(1)}
                                                        </div>
                                                        <div class="lq_3 dayso"
                                                             data="8741">${c.changeToList(c.getSixth_prize()).get(2)}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_nam">
                                                        <div class="lq_1 dayso"
                                                             data="1964">${c.changeToList(c.getFifth_prize()).get(0)}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_tu">
                                                        <div class="lq_1 dayso"
                                                             data="14869">${c.changeToList(c.getFourth_prize()).get(0)}
                                                        </div>
                                                        <div class="lq_2 dayso"
                                                             data="69329">${c.changeToList(c.getFourth_prize()).get(1)}
                                                        </div>
                                                        <div class="lq_3 dayso"
                                                             data="79214">${c.changeToList(c.getFourth_prize()).get(2)}
                                                        </div>
                                                        <div class="lq_4 dayso"
                                                             data="08566">${c.changeToList(c.getFourth_prize()).get(3)}
                                                        </div>
                                                        <div class="lq_5 dayso"
                                                             data="71701">${c.changeToList(c.getFourth_prize()).get(4)}
                                                        </div>
                                                        <div class="lq_6 dayso"
                                                             data="69303">${c.changeToList(c.getFourth_prize()).get(5)}
                                                        </div>
                                                        <div class="lq_7 dayso"
                                                             data="90652">${c.changeToList(c.getFourth_prize()).get(6)}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_ba">
                                                        <div class="lq_1 dayso"
                                                             data="49124">${c.changeToList(c.getThird_prize()).get(0)}
                                                        </div>
                                                        <div class="lq_2 dayso"
                                                             data="06927">${c.changeToList(c.getThird_prize()).get(1)}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_nhi">
                                                        <div class="lq_1 dayso"
                                                             data="07057">${c.getSecond_prize()}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_nhat">
                                                        <div class="lq_1 dayso"
                                                             data="71307">${c.getFirst_prize()}
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr align="center">
                                                    <td class="giai_dac_biet">
                                                        <div class="lq_1 dayso"
                                                             data="331504">${c.getSpecial_prize()}
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </td>
                                    </c:forEach>

                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>


        <div class="boxBottom" data-id="3-01-12-2023">
            <div class="config_Bangketqua_list">
                <div class="config_Item" data="0">All</div>
                <div class="config_Item" data="2">2 số</div>
                <div class="config_Item" data="3">3 Số</div>
            </div>
            <div class="daysoThongkes">
                <div class="daysoThongke">0</div>
                <div class="daysoThongke">1</div>
                <div class="daysoThongke">2</div>
                <div class="daysoThongke">3</div>
                <div class="daysoThongke">4</div>
                <div class="daysoThongke">5</div>
                <div class="daysoThongke">6</div>
                <div class="daysoThongke">7</div>
                <div class="daysoThongke">8</div>
                <div class="daysoThongke">9</div>
            </div>
        </div>
        <div class="boxdauduoimien" id="box_3-01-12-2023">
            <input class="btntk2sc " type="button" value="Loto Hàng chục"
                   data-id="3-01-12-2023"/>
            <input class="btntkhdv" type="button" value="Loto Hàng đơn vị"
                   data-id="3-01-12-2023"/>
        </div>
        <div id="DDM3-01-12-2023"></div>
    </div>
        <div class="clear"></div>

    <div class="box_kqxs" id="">
        <div class="xsmb">
            <div class="tenbkqxs">
                <div class="ngaykqxs"><a href="/ket-qua-xo-so/ngay-01-12-2023"
                                         title="Click xem KQXS 3 Miền Ngày: 01/12/23"><span
                        class="date"><span class="daymonth">${northern.get(0).getFull_date().getDayOfMonth()}/${northern.get(0).getFull_date().getMonthValue()}</span><span
                        class="year">${northern.get(0).getFull_date().getYear()}</span></span></a></div>
                <div class="title"><a href="/truc-tiep-xo-so-mien-bac-xstt-mb-xsmb">KẾT
                    QUẢ XỔ SỐ Miền Bắc<span class="hidemax460"> - KQXS MB</span></a>
                </div>
            </div>

            <div class="kqxs_content">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="thu"><a
                                href="/ket-qua-xo-so-mien-bac-kqxs-mb/thu-sau"
                                title="Click xem tất cả KQXS Miền Bắc ngày T.Sáu">T.Sáu</a>
                        </td>
                        <td class="tentinh"><span class="phathanh"><a
                                href="/xo-so-hai-phong" title="Xổ Số  Hải Phòng">${northern.get(0).getName()}</a></span>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_dac_biet">ĐB</td>
                        <td class="giai_dac_biet">
                            <div class="giaiDbmoi"><span></span>
                                <div class="lq_1 dayso" data="">${northern.get(0).getSpecial_prize()}</div>
                            </div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_nhat">G.Nhất</td>
                        <td class="giai_nhat">
                            <div class="lq_1 dayso" data="">${northern.get(0).getFirst_prize()}</div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_nhi">G.Nhì</td>
                        <td class="giai_nhi">
                            <div class="lq_1 dayso"
                                 data="02630">${northern.get(0).changeToList(northern.get(0).getSecond_prize()).get(0)}</div>
                            <div class="lq_2 dayso"
                                 data="94374">${northern.get(0).changeToList(northern.get(0).getSecond_prize()).get(1)}</div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_ba">G.Ba</td>
                        <td class="giai_ba">
                            <div class="lq_1 dayso"
                                 data="19187">${northern.get(0).changeToList(northern.get(0).getThird_prize()).get(0)}</div>
                            <div class="lq_2 dayso"
                                 data="84917">${northern.get(0).changeToList(northern.get(0).getThird_prize()).get(1)}</div>
                            <div class="lq_3 dayso"
                                 data="12364">${northern.get(0).changeToList(northern.get(0).getThird_prize()).get(2)}</div>
                            <div class="lq_4 dayso"
                                 data="34641">${northern.get(0).changeToList(northern.get(0).getThird_prize()).get(3)}</div>
                            <div class="lq_5 dayso"
                                 data="35984">${northern.get(0).changeToList(northern.get(0).getThird_prize()).get(4)}</div>
                            <div class="lq_6 dayso"
                                 data="38101">${northern.get(0).changeToList(northern.get(0).getThird_prize()).get(5)}</div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_tu">G.Tư</td>
                        <td class="giai_tu">
                            <div class="lq_1 dayso"
                                 data="0620">${northern.get(0).changeToList(northern.get(0).getFourth_prize()).get(0)}</div>
                            <div class="lq_2 dayso"
                                 data="6862">${northern.get(0).changeToList(northern.get(0).getFourth_prize()).get(1)}</div>
                            <div class="lq_3 dayso"
                                 data="5300">${northern.get(0).changeToList(northern.get(0).getFourth_prize()).get(2)}</div>
                            <div class="lq_4 dayso"
                                 data="7618">${northern.get(0).changeToList(northern.get(0).getFourth_prize()).get(3)}</div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_nam">G.Năm</td>
                        <td class="giai_nam">
                            <div class="lq_1 dayso"
                                 data="0918">${northern.get(0).changeToList(northern.get(0).getFifth_prize()).get(0)}</div>
                            <div class="lq_2 dayso"
                                 data="6025">${northern.get(0).changeToList(northern.get(0).getFifth_prize()).get(1)}</div>
                            <div class="lq_3 dayso"
                                 data="9110">${northern.get(0).changeToList(northern.get(0).getFifth_prize()).get(2)}</div>
                            <div class="lq_4 dayso"
                                 data="3749">${northern.get(0).changeToList(northern.get(0).getFifth_prize()).get(3)}</div>
                            <div class="lq_5 dayso"
                                 data="0894">${northern.get(0).changeToList(northern.get(0).getFifth_prize()).get(4)}</div>
                            <div class="lq_6 dayso"
                                 data="8079">${northern.get(0).changeToList(northern.get(0).getFifth_prize()).get(5)}</div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_sau">G.Sáu</td>
                        <td class="giai_sau">
                            <div class="lq_1 dayso"
                                 data="074">${northern.get(0).changeToList(northern.get(0).getSixth_prize()).get(0)}</div>
                            <div class="lq_2 dayso"
                                 data="487">${northern.get(0).changeToList(northern.get(0).getSixth_prize()).get(1)}</div>
                            <div class="lq_3 dayso"
                                 data="042">${northern.get(0).changeToList(northern.get(0).getSixth_prize()).get(2)}</div>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="ten_giai_bay">G.Bảy</td>
                        <td class="giai_bay">
                            <div class="lq_1 dayso"
                                 data="28">${northern.get(0).changeToList(northern.get(0).getSeventh_prize()).get(0)}</div>
                            <div class="lq_2 dayso"
                                 data="43">${northern.get(0).changeToList(northern.get(0).getSeventh_prize()).get(1)}</div>
                            <div class="lq_3 dayso"
                                 data="32">${northern.get(0).changeToList(northern.get(0).getSeventh_prize()).get(2)}</div>
                            <div class="lq_4 dayso"
                                 data="42">${northern.get(0).changeToList(northern.get(0).getSeventh_prize()).get(3)}</div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>


        <div class="boxBottom" data-id="2-01-12-2023">
            <div class="config_Bangketqua_list">
                <div class="config_Item" data="0">All</div>
                <div class="config_Item" data="2">2 số</div>
                <div class="config_Item" data="3">3 Số</div>
            </div>
            <div class="daysoThongkes">
                <div class="daysoThongke">0</div>
                <div class="daysoThongke">1</div>
                <div class="daysoThongke">2</div>
                <div class="daysoThongke">3</div>
                <div class="daysoThongke">4</div>
                <div class="daysoThongke">5</div>
                <div class="daysoThongke">6</div>
                <div class="daysoThongke">7</div>
                <div class="daysoThongke">8</div>
                <div class="daysoThongke">9</div>
            </div>
        </div>
        <div class="boxdauduoimien">
            <input class="btntk2sc " type="button" value="Loto Hàng chục"
                   data-id="2-01-12-2023"/>
            <input class="btntkhdv" type="button" value="Loto Hàng đơn vị"
                   data-id="2-01-12-2023"/>
        </div>

    </div>
</div>


</body>

</html>