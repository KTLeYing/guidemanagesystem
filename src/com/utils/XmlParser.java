package com.utils;

import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.io.File;
import java.util.HashMap;

public class XmlParser {

    public static HashMap<String, String> parse(String xmlPath) throws ParserConfigurationException, SAXException {
        HashMap<String, String> hashMap = new HashMap<String, String>();

        try {
            //1、实例化SAXParserFactory对象
            SAXParserFactory saxParserFactory = SAXParserFactory.newInstance();
            //2、通过factory工厂获取一个saxparser对象,即SAX解析器
            SAXParser saxParser = saxParserFactory.newSAXParser();
            //3、saxParser解析器调用parse方法来解析
            File file = new File(xmlPath);//事件源
            XmlHandler xmlHandler = new XmlHandler();//创建事件处理器
            saxParser.parse(file, xmlHandler);

            hashMap = xmlHandler.getHashMap();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return hashMap;

    }
}
