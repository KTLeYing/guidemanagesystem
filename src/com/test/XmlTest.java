package com.test;

import com.utils.XmlParser;
import com.utils.XmlValidator;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.util.HashMap;

public class XmlTest {

    public static void main(String[] args) throws ParserConfigurationException, SAXException {
       //路径1
       /* String xsdPath = "src//database.conf.xsd";
        String xmlPath = "src//database.conf.xml";*/
        //路径2（路径1和路径2均可以实现）
        String xsdPath = "out//production//guidemanagesystem3//database.conf.xsd";
        String xmlPath = "out//production//guidemanagesystem3//database.conf.xml";
        if (XmlValidator.validate(xsdPath, xmlPath)) {
            System.out.println("验证成功");
        } else {
            System.out.println("验证失败");
        }

        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap = XmlParser.parse(xmlPath);//解析器，解析配置文件
        System.out.println(hashMap.get("driver"));
        System.out.println(hashMap.get("url"));
        System.out.println(hashMap.get("user"));
        System.out.println(hashMap.get("password"));

    }

}
